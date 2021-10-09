const religionService = require("../../services/religion");
const { promise } = require("../../middlewares/promise");
const Exceptions = require("../../utils/custom-exceptions");

exports.createReligion = promise(async (req, res) => {
  const { description, alias } = req.body;
  const actionperformedBy = req.user.userId;

  const religion = await religionService.saveReligion({
    description,
    alias,
    actionperformedBy,
  });
  res.status(200).json({ message: "Successfully created religion", religion });
});

exports.getAllReligion = promise(async (req, res) => {
  const religion = await religionService.listAllReligion();
  res.status(200).json({ religion });
});

exports.getSingleReligion = promise(async (req, res) => {
  const { id } = req.params;

  const religion = await religionService.findByPk({ id });
  res.status(200).json({ religion });
});
