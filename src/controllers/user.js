const userService = require("../services/user");
const userAccessRoleService = require("../services/user-access-roles/index");
const Exceptions = require("../utils/custom-exceptions");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const config = require("config");

exports.register = async (req, res) => {
  const { email, password, displayName, roleIds } = req.body;

  const hashPassword = bcrypt.hashSync(password, 10);

  const user = await userService.createUser({
    displayName,
    email,
    password: hashPassword,
  });

  const userId = user.userId;
  const createdBy = req.user.userId;

  const userRoles = roleIds.map((roleId) => {
    return { userId, roleId, createdBy };
  });

  const role = await userAccessRoleService.saveUserRoles({ userRoles });

  res.status(200).json({
    message: "Successfully created new user and user access role",
    user,
    role,
  });
};

exports.login = async (req, res) => {
  const { email, password } = req.body;
  const user = await userService.findByEmail({ email });

  if (!user) {
    throw new Exceptions.BadRequest({
      message: "Your credentials not matched",
    });
  }

  const isValid = bcrypt.compareSync(password, user.password);
  if (!isValid) {
    throw new Exceptions.BadRequest({
      message: "Your credentials not matched",
    });
  }

  const token = jwt.sign(
    {
      userId: user.userId,
      username: user.username,
      displayName: user.displayName,
      isActive: user.isActive,
      isAdmin: user.isAdmin,
      isSuperuser: user.isSuperuser,
    },
    config.get("jwt.secret")
  );

  res.status(200).json({
    token,
    userId: user.userId,
    username: user.username,
    displayName: user.displayName,
    isActive: user.isActive,
    isAdmin: user.isAdmin,
    isSuperuser: user.isSuperuser,
  });
};

exports.profile = async (req, res) => {
  const { id } = req.params;

  const user = await userService.findById({ id });

  res.status(200).json({ user });
};
