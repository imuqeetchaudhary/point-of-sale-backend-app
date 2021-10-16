const yup = require("yup");

exports.createDeliveryTermSchema = yup.object({
  description: yup.string().required(),
  alias: yup.string(),
  iDays: yup.number(),
});

exports.updateDeliveryTermSchema = yup.object({
  description: yup.string(),
  alias: yup.string(),
  iDays: yup.number(),
});
