const yup = require("yup");

exports.createQUALevelsSchema = yup.object({
  description: yup.string().required(),
  alias: yup.string(),
  descDegree: yup.string(),
  level: yup.string(),
});

exports.updateQUALevelsSchema = yup.object({
  description: yup.string(),
  alias: yup.string(),
  descDegree: yup.string(),
  level: yup.string(),
});
