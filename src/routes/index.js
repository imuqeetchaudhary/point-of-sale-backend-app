const express = require("express");
const router = express.Router();

const testRoutes = require("./test");
const userRoute = require("../routes/user");
const roleRoute = require("../routes/role");
const menuRoute = require("../routes/menu");
const brandRoute = require("../routes/brand/brand");
const itemCategoryRoute = require("../routes/item-category/item-category");
const bloodGroupRoute = require("../routes/blood-group");
const currencyRoute = require("../routes/currency");
const religionRoute = require("../routes/religion");
const relationTypeRoute = require("../routes/relation-type");
const countryRoute = require("../routes/country");

router.get("/", (req, res) =>
  res.send({ message: "Point Of Sale Backend App RestApi" })
);

router.use("/test", testRoutes);
router.use("/user", userRoute);
router.use("/role", roleRoute);
router.use("/menu", menuRoute);
router.use("/brand", brandRoute);
router.use("/item-category", itemCategoryRoute);
router.use("/blood-group", bloodGroupRoute);
router.use("/currency", currencyRoute);
router.use("/religion", religionRoute);
router.use("/relation-type", relationTypeRoute);
router.use("/country", countryRoute);

module.exports = router;
