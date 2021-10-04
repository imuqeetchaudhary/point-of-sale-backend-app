const express = require("express");
const router = express.Router();
const userController = require("../controllers/user");
const { validation } = require("../middlewares/validation");
const { loginSchema } = require("../validations/user");

router.post("/login", validation(loginSchema), userController.login);

module.exports = router;
