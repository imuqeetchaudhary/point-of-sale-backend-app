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

exports.getAllCurrencies = promise(async (req, res) => {
  const currency = await currencyService.listAllCurrencies();
  res.status(200).json({ currency });
});

exports.getSingleCurrencies = promise(async (req, res) => {
  const { id } = req.params;

  const currency = await currencyService.findByPk({ id });
  res.status(200).json({ currency });
});

exports.updateCurrency = promise(async (req, res) => {
  const { id } = req.params;
  const currencyId = id;
  const { description, alias, symbol } = req.body;
  const actionperformedBy = req.user.userId;

  const updateCurrency = await currencyService.updateCurrency({
    currencyId,
    description,
    alias,
    symbol,
    actionperformedBy,
  });

  res.status(200).json({ message: "Successfully updated currency" });
});
