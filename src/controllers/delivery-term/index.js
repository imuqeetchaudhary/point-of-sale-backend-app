const deliveryTermService = require("../../services/delivery-term");
const { promise } = require("../../middlewares/promise");
const Exceptions = require("../../utils/custom-exceptions");

exports.createDeliveryTerm = promise(async (req, res) => {
  const { description, alias, iDays } = req.body;
  const actionperformedBy = req.user.userId;

  const deliveryTerm = await deliveryTermService.saveDeliveryTerm({
    description,
    alias,
    iDays,
    actionperformedBy,
  });

  res
    .status(200)
    .json({ message: "Successfully created delivery term", deliveryTerm });
});

exports.getAllDeliveryTerm = promise(async (req, res) => {
  const deliveryTerm = await deliveryTermService.listAllDeliveryTerms();
  res.status(200).json({ deliveryTerm });
});

exports.getSingleDeliveryTerm = promise(async (req, res) => {
  const { id } = req.params;

  const deliveryTerm = await deliveryTermService.findById({ id });
  res.status(200).json({ deliveryTerm });
});

exports.updateDeliveryTerm = promise(async (req, res) => {
  const { id } = req.params;
  const deliveryTermId = id;
  const { description, alias, iDays } = req.body;
  const actionperformedBy = req.user.userId;

  const updatedeliveryTerm = await deliveryTermService.updateDeliveryTerm({
    deliveryTermId,
    description,
    alias,
    iDays,
    actionperformedBy,
  });

  res.status(200).json({ message: "Successfully updated delivery term" });
});

exports.deleteDeliveryTerm = promise(async (req, res) => {
  const { id } = req.params;
  const deliveryTermId = id;

  const deletedeliveryTerm = await deliveryTermService.deleteDeliveryTerm({
    deliveryTermId,
  });
  res.status(200).json({ message: "Successfully deleted delivery term" });
});
