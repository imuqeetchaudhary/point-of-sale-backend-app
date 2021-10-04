const yup = require("yup");

exports.createMenuSchema = yup.object().shape({
  description: yup.string().required(),
  link: yup.string(),
  parentId: yup.number(),
});

exports.updateMenuSchema = yup.object().shape({
  description: yup.string(),
  link: yup.string(),
  parentId: yup.number(),
});
