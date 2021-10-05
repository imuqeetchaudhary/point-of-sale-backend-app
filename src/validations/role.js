const yup = require("yup");

exports.createRoleSchema = yup.object().shape({
  description: yup.string().required(),
  menuIds: yup.number().required(),
});

exports.updateRoleSchema = yup.object().shape({
  description: yup.string(),
  menuIds: yup.number(),
});
