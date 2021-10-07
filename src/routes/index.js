const express = require("express");
const router = express.Router();

const testRoutes = require("./test");
const userRoute = require("../routes/user");
const roleRoute = require("../routes/role");
const menuRoute = require("../routes/menu");
const brandRoute = require("../routes/brand/brand");
const itemCategoryRoute = require("../routes/item-category/item-category");

router.get("/", (req, res) =>
  res.send({ message: "Point Of Sale Backend App RestApi" })
);

router.use("/test", testRoutes);
router.use("/user", userRoute);
router.use("/role", roleRoute);
router.use("/menu", menuRoute);
router.use("/brand", brandRoute);
router.use("/item-category", itemCategoryRoute);

module.exports = router;
