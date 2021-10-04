const express = require("express");
const bodyParser = require("body-parser");
const morgan = require("morgan");
const allRoutes = require("./routes");

const app = express();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

if (app.get("env") === "development") {
  app.use(morgan("tiny"));
  console.log("Morgan enable...");
}

app.use("/", allRoutes);

module.exports = app;
