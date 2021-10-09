const yup = require("yup");

exports.createRelationTypeSchema = yup.object().shape({
  description: yup.string().required(),
  alias: yup.string(),
});
