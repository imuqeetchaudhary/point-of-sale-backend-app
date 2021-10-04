const menuService = require("../services/menu");
const Exceptions = require("../utils/custom-exceptions");

exports.createMenu = async (req, res) => {
  const { description, link, parentId } = req.body;
  const createdBy = req.user.userId;

  const menu = await menuService.saveMenu({
    description,
    link,
    parentId,
    createdBy,
  });

  res.status(200).json({ message: "Successfully created new menu", menu });
};
