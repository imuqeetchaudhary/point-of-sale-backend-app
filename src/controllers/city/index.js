const cityService = require("../../services/city");
const { promise } = require("../../middlewares/promise");
const Exceptions = require("../../utils/custom-exceptions");

exports.createCity = promise(async (req, res) => {
  const { countryId, description, alias, province, dailCode } = req.body;
  const actionperformedBy = req.user.userId;

  const city = await cityService.saveCity({
    countryId,
    description,
    alias,
    province,
    dailCode,
    actionperformedBy,
  });

  res.status(200).json({ message: "Successfully created city", city });
});

exports.getAllCities = promise(async (req, res) => {
  const city = await cityService.listAllCities();
  res.status(200).json({ city });
});

exports.getSingleCity = promise(async (req, res) => {
  const { id } = req.params;

  const city = await cityService.findById({ id });
  res.status(200).json({ city });
});

exports.updateCity = promise(async (req, res) => {
  const { id } = req.params;
  const cityId = id;
  const { countryId, description, alias, province, dailCode } = req.body;
  const actionperformedBy = req.user.userId;

  const updatecity = await cityService.updateCity({
    cityId,
    countryId,
    description,
    alias,
    province,
    dailCode,
    actionperformedBy,
  });

  res.status(200).json({ message: "Successfully updated city" });
});

exports.deleteCity = promise(async (req, res) => {
  const { id } = req.params;
  const cityId = id;

  const deleteCity = await cityService.deleteCity({
    cityId,
  });
  res.status(200).json({ message: "Successfully deleted city" });
});
