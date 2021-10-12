const yup = require("yup");

exports.createQualificationSchema = yup.object({
  quaLevelsId: yup.number().min(1).required(),
  description: yup.string().required(),
  alias: yup.string(),
});
