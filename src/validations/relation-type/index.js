const yup = require("yup");

exports.createRelationTypeSchema = yup.object().shape({
  description: yup.string().required(),
  alias: yup.string(),
});

exports.updateRelationTypeSchema = yup.object().shape({
  description: yup.string(),
  alias: yup.string(),
});
