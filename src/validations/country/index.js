const yup = require("yup");

exports.createCountrySchema = yup.object({
  currencyId: yup.number().min(1).required(),
  description: yup.string().required(),
  alias: yup.string(),
  capital: yup.string().required(),
  dailCode: yup.string().required(),
});

exports.updateCountrySchema = yup.object({
  currencyId: yup.number().min(1).required(),
  description: yup.string().required(),
  alias: yup.string(),
  capital: yup.string().required(),
  dailCode: yup.string().required(),
});