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

exports.getSingleRelationType = promise(async (req, res) => {
  const { id } = req.params;

  const relationType = await relationTypeService.findById({ id });
  res.status(200).json({ relationType });
});

exports.updateRelationType = promise(async (req, res) => {
  const { id } = req.params;
  const relationTypeId = id;
  const { description, alias } = req.body;
  const actionperformedBy = req.user.userId;

  const updateRelationType = await relationTypeService.updateRelationType({
    relationTypeId,
    description,
    alias,
    actionperformedBy,
  });

  res.status(200).json({ message: "Successfully updated relation type" });
});

exports.deleteRelationType = promise(async (req, res) => {
  const { id } = req.params;
  const relationTypeId = id;

  const deleteRelationType = await relationTypeService.deleteRelationType({
    relationTypeId,
  });
  res.status(200).json({ message: "Successfully deleted relation type" });
});
