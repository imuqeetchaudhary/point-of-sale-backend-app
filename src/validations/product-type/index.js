const yup = require("yup");

exports.createProductTypeSchema = yup.object().shape({
  description: yup.string().required(),
  alias: yup.string(),
});

exports.updateProductTypeSchema = yup.object().shape({
  description: yup.string(),
  alias: yup.string(),
});
