const express = require("express");
const menuService = require("../services/menu");

const router = express.Router();
router.get("/", async (_, res) => {
  const menu = await menuService.updateMenu({
    menuId: 4,
    // description: "Programming Fundamentals",
    link: "/programming-fundamentals",
    updatedBy: 1,
  });
  res.send({ menu });
});

module.exports = router;
