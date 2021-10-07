const express = require("express");
const menuService = require("../services/menu");

const router = express.Router();
router.get("/", async (_, res) => {
  await menu(res);
});

async function menu(res) {
  const menu = await menuService.findById({ menuId: 5 });
  res.send({ menu });
}

module.exports = router;
