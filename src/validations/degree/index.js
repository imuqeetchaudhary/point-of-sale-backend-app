const yup = require("yup");

exports.createDegreeSchema = yup.object({
  qualificationId: yup.number().min(1).required(),
  description: yup.string().required(),
  alias: yup.string(),
});

exports.updateDegreeSchema = yup.object({
  qualificationId: yup.number().min(1),
  description: yup.string(),
  alias: yup.string(),
});
