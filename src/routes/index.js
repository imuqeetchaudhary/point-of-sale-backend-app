const express = require("express");
const testRoutes = require("./test");

const router = express.Router();
router.get("/", (_, res) => res.send({ message: "HomePage" }));
router.use("/test", testRoutes);

module.exports = router;
