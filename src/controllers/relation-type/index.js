const relationTypeService = require("../../services/relation-type");
const { promise } = require("../../middlewares/promise");
const Exceptions = require("../../utils/custom-exceptions");

exports.createRelationType = promise(async (req, res) => {
  const { description, alias } = req.body;
  const actionperformedBy = req.user.userId;

  const relationType = await relationTypeService.saveRelationType({
    description,
    alias,
    actionperformedBy,
  });

  res
    .status(200)
    .json({ message: "Successfully created blood group", relationType });
});

exports.getAllRelationType = promise(async (req, res) => {
  const relationType = await relationTypeService.listAllRelationType();
  res.status(200).json({ relationType });
});
