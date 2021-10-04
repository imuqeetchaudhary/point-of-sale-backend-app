const yup = require("yup");

exports.loginSchema = yup.object().shape({
  email: yup.string().email().required(),
  password: yup.string().required(),
});
