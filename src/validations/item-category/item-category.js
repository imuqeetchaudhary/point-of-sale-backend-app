const yup = require("yup");

exports.createItemCategorySchema = yup.object().shape({
  description: yup.string().required(),
  categoryCode: yup.string().required(),
  customCode: yup.string().required(),
  parentId: yup.string(),
});
