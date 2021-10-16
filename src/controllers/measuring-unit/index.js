const measuringUnitService = require("../../services/measuring-unit");
const { promise } = require("../../middlewares/promise");
const Exceptions = require("../../utils/custom-exceptions");

exports.createMeasuringUnit = promise(async (req, res) => {
  const { description, alias } = req.body;
  const actionperformedBy = req.user.userId;

  const measuringUnit = await measuringUnitService.saveMeasuringUnit({
    description,
    alias,
    actionperformedBy,
  });

  res
    .status(200)
    .json({ message: "Successfully created measuring unit", measuringUnit });
});

exports.getAllMeasuringUnit = promise(async (req, res) => {
  const measuringUnit = await measuringUnitService.listAllMeasuringUnits();
  res.status(200).json({ measuringUnit });
});

exports.getSingleMeasuringUnit = promise(async (req, res) => {
  const { id } = req.params;

  const measuringUnit = await measuringUnitService.findById({ id });
  res.status(200).json({ measuringUnit });
});

exports.updateMeasuringUnit = promise(async (req, res) => {
  const { id } = req.params;
  const measuringUnitId = id;
  const { description, alias } = req.body;
  const actionperformedBy = req.user.userId;

  const updatemeasuringUnit = await measuringUnitService.updateMeasuringUnit({
    measuringUnitId,
    description,
    alias,
    actionperformedBy,
  });

  res.status(200).json({ message: "Successfully updated measuring unit" });
});

exports.deleteMeasuringUnit = promise(async (req, res) => {
  const { id } = req.params;
  const measuringUnitId = id;

  const deletemeasuringUnit = await measuringUnitService.deleteMeasuringUnit({
    measuringUnitId,
  });
  res.status(200).json({ message: "Successfully deleted measuring unit" });
});
