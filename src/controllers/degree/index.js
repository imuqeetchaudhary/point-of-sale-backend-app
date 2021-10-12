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

exports.getAllDegree = promise(async (req, res) => {
  const degree = await degreeService.listAllDegree();
  res.status(200).json({ degree });
});

exports.getSingleDegree = promise(async (req, res) => {
  const { id } = req.params;

  const degree = await degreeService.findById({ id });
  res.status(200).json({ degree });
});
