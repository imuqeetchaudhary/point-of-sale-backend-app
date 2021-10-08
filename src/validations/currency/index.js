const yup = require("yup");

exports.createCurrencySchema = yup.object({
  description: yup.string().required(),
  alias: yup.string(),
  symbol: yup.string(),
});
