const express = require("express");
const allRoutes = require("./routes");

const app = express();
app.use("/", allRoutes);

module.exports = app;
