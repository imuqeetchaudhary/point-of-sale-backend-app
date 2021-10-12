const qualificationService = require("../../services/qualification");
const { promise } = require("../../middlewares/promise");
const Exceptions = require("../../utils/custom-exceptions");

exports.createQualification = promise(async (req, res) => {
  const { quaLevelsId, description, alias } = req.body;
  const actionperformedBy = req.user.userId;

  const qualification = await qualificationService.saveQualification({
    quaLevelsId,
    description,
    alias,
    actionperformedBy,
  });

  res
    .status(200)
    .json({ message: "Successfully created qualification", qualification });
});

exports.getAllQualifications = promise(async (req, res) => {
  const qualification = await qualificationService.listAllQualifications();
  res.status(200).json({ qualification });
});

exports.getSingleQualification = promise(async (req, res) => {
  const { id } = req.params;

  const qualification = await qualificationService.findById({ id });
  res.status(200).json({ qualification });
});
