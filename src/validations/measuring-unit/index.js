const yup = require("yup");

exports.createMeasuringUnitSchema = yup.object({
  description: yup.string().required(),
  alias: yup.string(),
});

exports.updateMeasuringUnitSchema = yup.object({
  description: yup.string(),
  alias: yup.string(),
});
