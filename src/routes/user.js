const express = require("express");
const router = express.Router();
const userController = require("../controllers/user");
const { validation } = require("../middlewares/validation");
const { authentication } = require("../middlewares/isAuth");
const { loginSchema, registerSchema } = require("../validations/user");

router.post("/register", validation(registerSchema), userController.register);

router.post("/login", validation(loginSchema), userController.login);

router.get("/profile/:id", authentication, userController.profile);

module.exports = router;
