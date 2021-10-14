const yup = require("yup");

exports.registerSchema = yup.object().shape({
  email: yup.string().email().required(),
  password: yup.string().required(),
  displayName: yup.string().required(),
  roleIds: yup.number(),
});

exports.loginSchema = yup.object().shape({
  email: yup.string().email().required(),
  password: yup.string().required(),
});

exports.updateSchema = yup.object().shape({
  email: yup.string().email(),
  displayName: yup.string(),
  roleIds: yup.number(),
});
