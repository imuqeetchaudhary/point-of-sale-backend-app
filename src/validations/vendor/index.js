const yup = require("yup");

exports.createVendorSchema = yup.object({
  description: yup.string().required(),
  alias: yup.string(),
  address: yup.string(),
  countryId: yup.number().required(),
  cityId: yup.number().required(),
  sRegStNo: yup.string(),
  sItNo: yup.string(),
  phone: yup.string(),
  fax: yup.string(),
  cell: yup.string(),
  email: yup.string(),
  isWht: yup.boolean().required(),
  whtTax: yup.number().required(),
  iWhtTax: yup.number().required(),
  isCreditLimit: yup.boolean().required(),
  creditAmount: yup.number().required(),
  contactPerson: yup.string(),
  iAccountId: yup.number(),
});

exports.updateVendorSchema = yup.object({
  description: yup.string(),
  alias: yup.string(),
  address: yup.string(),
  countryId: yup.number(),
  cityId: yup.number(),
  sRegStNo: yup.string(),
  sItNo: yup.string(),
  phone: yup.string(),
  fax: yup.string(),
  cell: yup.string(),
  email: yup.string(),
  isWht: yup.string(),
  whtTax: yup.number(),
  iWhtTax: yup.number(),
  isCreditLimit: yup.string(),
  creditAmount: yup.number(),
  contactPerson: yup.string(),
  iAccountId: yup.number(),
});
