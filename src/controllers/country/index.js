const countryService = require("../../services/country");
const { promise } = require("../../middlewares/promise");
const Exceptions = require("../../utils/custom-exceptions");

exports.createCountry = promise(async (req, res) => {
  const { currencyId, description, alias, capital, dailCode } = req.body;
  const actionperformedBy = req.user.userId;

  const country = await countryService.saveCountry({
    currencyId,
    description,
    alias,
    capital,
    dailCode,
    actionperformedBy,
  });

  res.status(200).json({ message: "Successfully created country", country });
});

exports.getAllCountry = promise(async (req, res) => {
  const country = await countryService.listAllCountries();
  res.status(200).json({ country });
});
