const express = require("express");
const morgan = require("morgan");
const allRoutes = require("./routes");

const app = express();

if (app.get("env") === "development") {
  app.use(morgan("tiny"));
  console.log("Morgan enable...");
}

app.use("/", allRoutes);

module.exports = app;
