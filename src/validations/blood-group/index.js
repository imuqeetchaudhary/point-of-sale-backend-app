const yup = require("yup");

exports.createBloodGroupSchema = yup.object({
  description: yup.string().required(),
  alias: yup.string(),
});
