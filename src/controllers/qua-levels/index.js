const quaLevelsService = require("../../services/qua-levels");
const { promise } = require("../../middlewares/promise");
const Exceptions = require("../../utils/custom-exceptions");

exports.createQUALevels = promise(async (req, res) => {
  const { description, alias, descDegree, level } = req.body;
  const actionperformedBy = req.user.userId;

  const quaLevels = await quaLevelsService.saveQUALevels({
    description,
    alias,
    descDegree,
    level,
    actionperformedBy,
  });
  res
    .status(200)
    .json({ message: "Successfully created quaLevels", quaLevels });
});

exports.getAllQUALevels = promise(async (req, res) => {
  const quaLevels = await quaLevelsService.listAllQUALevels();
  res.status(200).json({ quaLevels });
});
