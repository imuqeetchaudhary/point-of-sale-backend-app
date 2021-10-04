const express = require("express");
require("express-async-errors");
const morgan = require("morgan");
const allRoutes = require("./routes");
const catchUnhandleExceptions = require("./middlewares/exception-handling");

const app = express();

if (app.get("env") === "development") {
  app.use(morgan("tiny"));
  console.log("Morgan enable...");
}

app.use("/", allRoutes);
app.use(catchUnhandleExceptions);

module.exports = app;
