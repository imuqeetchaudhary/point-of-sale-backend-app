const db = require("./src/models");

db.sequelize
  .sync({ force: true })
  .then(() => {
    console.log("successfully run");
  })
  .catch((err) => {
    console.log("error: ", err);
  });
