const yup = require("yup");

exports.createBloodGroupSchema = yup.object({
  description: yup.string().required(),
  alias: yup.string(),
});

exports.updateBloodGroupSchema = yup.object({
  description: yup.string(),
  alias: yup.string(),
});
