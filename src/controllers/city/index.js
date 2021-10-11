const cityService = require("../../services/city");
const { promise } = require("../../middlewares/promise");
const Exceptions = require("../../utils/custom-exceptions");

exports.createCity = promise(async (req, res) => {
  const { countryId, description, alias, province, dailCode } = req.body;
  const actionperformedBy = req.user.userId;

  const city = await cityService.saveCity({
    countryId,
    description,
    alias,
    province,
    dailCode,
    actionperformedBy,
  });

  res.status(200).json({ message: "Successfully created city", city });
});
