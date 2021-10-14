const express = require("express");
const router = express.Router();
const userController = require("../controllers/user");
const { validation } = require("../middlewares/validation");
const { authentication } = require("../middlewares/isAuth");
const {
  loginSchema,
  registerSchema,
  updateSchema,
} = require("../validations/user");

router.post(
  "/register",
  authentication,
  validation(registerSchema),
  userController.register
);

router.post("/login", validation(loginSchema), userController.login);

router.get("/profile", authentication, userController.profile);

router.get("/get-all", authentication, userController.getAllUsers);

router.get("/get/:id", authentication, userController.getSingleUser);

router.get("/role/:id", authentication, userController.getSingleUserRoles);

router.patch(
  "/update/:id",
  authentication,
  validation(updateSchema),
  userController.updateUser
);

module.exports = router;
