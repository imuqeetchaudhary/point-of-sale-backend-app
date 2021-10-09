const yup = require("yup");

exports.createReligionSchema = yup.object({
  description: yup.string().required(),
  alias: yup.string(),
});

exports.updateReligionSchema = yup.object({
  description: yup.string(),
  alias: yup.string(),
});
