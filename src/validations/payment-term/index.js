const yup = require("yup");

exports.createPaymentTermSchema = yup.object({
  description: yup.string().required(),
  alias: yup.string(),
  iDays: yup.number(),
});

exports.updatePaymentTermSchema = yup.object({
  description: yup.string(),
  alias: yup.string(),
  iDays: yup.number(),
});
