const degreeService = require("../../services/degree");
const { promise } = require("../../middlewares/promise");
const Exceptions = require("../../utils/custom-exceptions");

exports.createDegree = promise(async (req, res) => {
  const { qualificationId, description, alias } = req.body;
  const actionperformedBy = req.user.userId;

  const degree = await degreeService.saveDegree({
    qualificationId,
    description,
    alias,
    actionperformedBy,
  });
  res.status(200).json({ message: "Successfully created degree", degree });
});
