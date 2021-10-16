const config = require("config");
const { Sequelize, DataTypes } = require("sequelize");

function init() {
  const sequelize = new Sequelize({ ...config.get("db") });
  return () => sequelize;
}
const getDbClient = init();
const dbClient = getDbClient();

const db = {};
db.sequelize = dbClient;

const user = require("./user");
const role = require("./role");
const menu = require("./menu");
const menuAccessRoles = require("./menu-access-roles");
const userAccessRoles = require("./user-access-roles");
const brand = require("./brand");
const itemCategory = require("./item-category");
const bloodgroup = require("./blood-group");
const currency = require("./currency");
const religion = require("./religion");
const relationType = require("./relation-type");
const country = require("./country");
const city = require("./city");
const qua_levels = require("./qua-levels");
const qualification = require("./qualification");
const degree = require("./degree");
const paymentTerm = require("./payment-term");
const measuringUnit = require("./measuring-unit");
const deliveryTerm = require("./delivery-term");
const customer = require("./customer");
const vendor = require("./vendor");

const User = user.init(dbClient, DataTypes);
const Role = role.init(dbClient, DataTypes, { User });
const Menu = menu.init(dbClient, DataTypes, { User });
const MenuAccessRoles = menuAccessRoles.init(dbClient, DataTypes, {
  User,
  Role,
  Menu,
});
const UserAccessRoles = userAccessRoles.init(dbClient, DataTypes, {
  User,
  Role,
});
const Brand = brand.init(dbClient, DataTypes, { User });
const ItemCategory = itemCategory.init(dbClient, DataTypes, { User });
const BloodGroup = bloodgroup.init(dbClient, DataTypes);
const Currency = currency.init(dbClient, DataTypes);
const Religion = religion.init(dbClient, DataTypes);
const RelationType = relationType.init(dbClient, DataTypes);
const Country = country.init(dbClient, DataTypes);
const City = city.init(dbClient, DataTypes);
const QUALevels = qua_levels.init(dbClient, DataTypes);
const Qualification = qualification.init(dbClient, DataTypes);
const Degree = degree.init(dbClient, DataTypes);
const PaymentTerm = paymentTerm.init(dbClient, DataTypes);
const MeasuringUnit = measuringUnit.init(dbClient, DataTypes);
const DeliveryTerm = deliveryTerm.init(dbClient, DataTypes);
const Customer = customer.init(dbClient, DataTypes);
const Vendor = vendor.init(dbClient, DataTypes);

db.User = User;
db.Role = Role;
db.Menu = Menu;
db.MenuAccessRoles = MenuAccessRoles;
db.UserAccessRoles = UserAccessRoles;
db.Brand = Brand;
db.ItemCategory = ItemCategory;
db.BloodGroup = BloodGroup;
db.Currency = Currency;
db.Religion = Religion;
db.RelationType = RelationType;
db.Country = Country;
db.City = City;
db.QUALevels = QUALevels;
db.Qualification = Qualification;
db.Degree = Degree;
db.PaymentTerm = PaymentTerm;
db.MeasuringUnit = MeasuringUnit;
db.DeliveryTerm = DeliveryTerm;
db.Customer = Customer;
db.Vendor = Vendor;

module.exports = db;
