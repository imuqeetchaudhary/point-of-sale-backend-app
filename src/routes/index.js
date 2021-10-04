const express = require("express");
const testRoutes = require("./test");
const router = express.Router();

const userRoute = require("../routes/user");
const roleRoute = require("../routes/role");
const menuRoute = require("../routes/menu");

router.use("/test", testRoutes);

router.get("/", (req, res) =>
  res.send({ message: "Point Of Sale Backend App RestApi" })
);

router.use("/user", userRoute);
router.use("/role", roleRoute);
router.use("/menu", menuRoute);

module.exports = router;
