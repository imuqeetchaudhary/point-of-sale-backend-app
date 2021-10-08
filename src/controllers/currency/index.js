const currencyService = require("../../services/currency");
const { promise } = require("../../middlewares/promise");
const Exceptions = require("../../utils/custom-exceptions");

exports.createCurrency = promise(async (req, res) => {
  const { description, alias, symbol } = req.body;
  const actionperformedBy = req.user.userId;

  const currency = await currencyService.saveCurrency({
    description,
    alias,
    symbol,
    actionperformedBy,
  });
  res.status(200).json({ message: "Successfully created currency", currency });
});
