const yup = require("yup");

exports.createBrandSchema = yup.object().shape({
  description: yup.string().required(),
});
