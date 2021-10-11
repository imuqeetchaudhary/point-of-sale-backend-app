const yup = require("yup");

exports.createCitySchema = yup.object({
  countryId: yup.number().min(1).required(),
  description: yup.string().required(),
  alias: yup.string(),
  province: yup.string().required(),
  dailCode: yup.string().required(),
});

exports.updateCitySchema = yup.object({
  countryId: yup.number().min(1),
  description: yup.string(),
  alias: yup.string(),
  province: yup.string(),
  dailCode: yup.string(),
});
