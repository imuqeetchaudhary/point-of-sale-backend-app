const paymentTermService = require("../../services/payment-term");
const { promise } = require("../../middlewares/promise");
const Exceptions = require("../../utils/custom-exceptions");

exports.createPaymentTerm = promise(async (req, res) => {
  const { description, alias, iDays } = req.body;
  const actionperformedBy = req.user.userId;

  const paymentTerm = await paymentTermService.savePaymentTerm({
    description,
    alias,
    iDays,
    actionperformedBy,
  });

  res
    .status(200)
    .json({ message: "Successfully created payment term", paymentTerm });
});

exports.getAllPaymentTerm = promise(async (req, res) => {
  const paymentTerm = await paymentTermService.listAllPaymentTerms();
  res.status(200).json({ paymentTerm });
});

exports.getSinglePaymentTerm = promise(async (req, res) => {
  const { id } = req.params;

  const paymentTerm = await paymentTermService.findById({ id });
  res.status(200).json({ paymentTerm });
});

exports.updatePaymentTerm = promise(async (req, res) => {
  const { id } = req.params;
  const paymentTermId = id;
  const { description, alias, iDays } = req.body;
  const actionperformedBy = req.user.userId;

  const updatepaymentTerm = await paymentTermService.updatePaymentTerm({
    paymentTermId,
    description,
    alias,
    iDays,
    actionperformedBy,
  });

  res.status(200).json({ message: "Successfully updated payment term" });
});

exports.deletePaymentTerm = promise(async (req, res) => {
  const { id } = req.params;
  const paymentTermId = id;

  const deletepaymentTerm = await paymentTermService.deletePaymentTerm({
    paymentTermId,
  });
  res.status(200).json({ message: "Successfully deleted payment term" });
});
