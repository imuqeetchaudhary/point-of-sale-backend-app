const express = require("express");
const menuService = require("../services/menu");

const router = express.Router();
router.get("/", async (_, res) => {
  const menu = await menuService.saveMenu({
    description: "Programming",
    link: "/programming",
    createdBy: 1,
  });
  res.send({ menu });
});

module.exports = router;
