const bloodGroupService = require("../../services/blood-group/index");
const { promise } = require("../../middlewares/promise");
const Exceptions = require("../../utils/custom-exceptions");

exports.createBloodGroup = promise(async (req, res) => {
  const { description, alias } = req.body;
  const actionperformedBy = req.user.userId;

  const bloodGroup = await bloodGroupService.saveBloodGroup({
    description,
    alias,
    actionperformedBy,
  });

  res
    .status(200)
    .json({ message: "Successfully created blood group", bloodGroup });
});

exports.getAllBloodGroup = promise(async (req, res) => {
  const bloodGroup = await bloodGroupService.listAllBloodGroups();
  res.status(200).json({ bloodGroup });
});

exports.getSingleBloodGroup = promise(async (req, res) => {
  const { id } = req.params;

  const bloodGroup = await bloodGroupService.findById({ id });
  res.status(200).json({ bloodGroup });
});

exports.updateBloodGroup = promise(async (req, res) => {
  const { id } = req.params;
  const bloodgroupId = id;
  const { description, alias } = req.body;
  const actionperformedBy = req.user.userId;

  const updateBloodGroup = await bloodGroupService.updateBloodGroup({
    bloodgroupId,
    description,
    alias,
    actionperformedBy,
  });

  res.status(200).json({ message: "Successfully updated blood group" });
});

exports.deleteBloodGroup = promise(async (req, res) => {
  const { id } = req.params;
  const bloodgroupId = id;

  const deleteBloodGroup = await bloodGroupService.deleteBloodGroup({
    bloodgroupId,
  });
  res.status(200).json({ message: "Successfully deleted blood group" });
});
