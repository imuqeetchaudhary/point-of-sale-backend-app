const express = require("express");
const testRoutes = require("./test");
const router = express.Router();

const userRoute = require("../routes/user");

router.get("/", (req, res) =>
  res.send({ message: "Point Of Sale Backend App RestApi" })
);
router.use("/test", testRoutes);

router.use("/user", userRoute);

module.exports = router;
