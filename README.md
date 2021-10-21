# Point Of Sale Backend App RestApi

---

## Routes for User Auth

### to register a user

- user/register :post :protected

```js
{
    email: String,
    password: String,
    displayName: String,
    roleIds: Number[],
}
```

### to login a user

- user/login :post

```js
{
    email: String,
    password: String,
}
```

### to get all users

- user/get-all :get :protected

### to get a single user

- user/get/:id: :get :protected

### to get single user roles

- user/role/:id: :get :protected (where id stands for userId)

### to get user profile

- user/profile :get :protected

### to update a user

- user/update/:id: :patch :protected

```js
{
    email: String,
    displayName: String,
    roleIds: Number[],
}
```

## Routes for Menu

### to create a new menu

- menu/create :post :protected

```js
{
    description: String,
    link: String,
    parentId: Number,
    icon: String,
}
```

### to get all menu

- menu/get-all :get :protected

### to get a single menu

- menu/get/:id: :get :protected

### to get all menu for a specific role id

- menu/get-all-for-role/:id: :get :protected (where id stands for roleId)

### to get all assigned menus for a specific role id

- menu/get-all-assigned-role/:id: :get :protected (where id stands for roleId)

### to update a new menu

- menu/update/:id: :post :protected

```js
{
    description: String,
    link: String,
    parentId: Number,
    icon: String,
}
```

## Routes for Role

### to create a new role & menu access role

- role/create :post :protected

```js
{
    description: String,
    menuIds: Number[],
}
```

### to get all role

- role/get-all :get :protected

### to get a single role

- role/get/:id: :get :protected

### to get all roles for single user

- role/user/:id :get :protected (where id stands for userId)

### to update a role

- role/update/:id: :post :protected

```js
{
    description: String,
    menuIds: Number[],
}
```

## Routes for Brand

### to create a new brand

- brand/create :post :protected

```js
{
    description: String,
}
```

### to get all brands

- brand/get-all :get :protected

### to get single brand

- brand/get/:id: :get :protected

### to update a brand

- brand/update/:id: :patch :protected

```js
{
    description: String,
}
```

### t0 delete a brand

- brand/delete/:id: :delete :protected

## Routes for Item Category

### to create a new item category

- item-category/create :post :protected

```js
{
    description: String,
    categoryCode: String,
    customCode: String,
    parentId: Number,
}
```

### to get all item category

- item-category/get-all :get :protected

### to get a single item category

- item-category/get/:id: :get :protected

### to update a item category

- item-category/update/:id: :patch :protected

```js
{
    description: String,
    categoryCode: String,
    customCode: String,
    parentId: Number,
}
```

## Routes for Blood Group

### to create a new blood group

- blood-group/create :post :protected

```js
{
    description: String,
    alias: String,
}
```

### to get all blood groups

- blood-group/get-all :get :protected

### to get single blood group

- blood-group/get/:id: :get :protected

### to update a blood group

- blood-group/update/:id: :patch :protected

```js
{
    description: String,
    alias: String,
}
```

### to delete a blood group

- blood-group/delete/:id: :delete :protected

## Routes for Currency

### to create a new currency

- currency/create :post :protected

```js
{
    description: String,
    alias: String,
    symbol: String,
}
```

### to get all currency

- currency/get-all :get :protected

### to get single currency

- currency/get/:id: :get :protected

### to update a currency

- currency/update/:id: :patch :protected

```js
{
    description: String,
    alias: String,
    symbol: String,
}
```

### to delete a currency

- currency/delete/:id: :delete :protected

## Routes for Religion

### to create a religion

- religion/create :post :protected

```js
{
    description: String,
    alias: String,
}
```

### to get all religion

- religion/get-all :get :protected

### to get a single religion

- religion/get/:id: :get :protected

### to update a religion

- religion/update/:id: :patch :protected

```js
{
    description: String,
    alias: String,
}
```

### to delete a religion

- religion/delete/:id: :delete :protected

## Routes for Relation Type

### to create a new relation type

- relation-type/create :post :protected

```js
{
    description: String,
    alias: String,
}
```

### to get all relation type

- relation-type/get-all :get :protected

### to get single relation type

- relation-type/get/:id: :get :protected

### to update a relation type

- relation-type/update/:id: :patch :protected

```js
{
    description: String,
    alias: String,
}
```

### to delete a relation type

- relation-type/delete/:id: :delete :protected

## Routes for Country

### to create a new country

- country/create :post :protected

```js
{
    currencyId: Number,
    description: String,
    alias: String,
    capital: String,
    dailCode: String,
}
```

### to get all countries

- country/get-all :get :protected

### to get a single country

- country/get/:id: :get :protected

### to update a country

- country/update/:id: :patch :protected

```js
{
    currencyId: Number,
    description: String,
    alias: String,
    capital: String,
    dailCode: String,
}
```

### to delete a country

- country/delete/:id: :delete :protected

## Routes for City

### to create a new city

- city/create :post :protected

```js
{
    countryId: Number,
    description: String,
    alias: String,
    province: String,
    dailCode: String,
}
```

### to get all cities

- city/get-all :get :protected

### to get single city

- city/get/:id: :get :protected

### to update a city

- city/update/:id: :patch :protected

```js
{
    countryId: Number,
    description: String,
    alias: String,
    province: String,
    dailCode: String,
}
```

### to delete a city

- city/delete/:id: :delete :protected

## Routes for QUA Levels

### to create a new qua level

- qua-levels/create :post :protected

```js
{
    description: String,
    alias: String,
    descDegree: String,
    level: String
}
```

### to get all qua levels

- qua-levels/get-all :get :protected

### to get a single qua level

- qua-levels/get/:id: :get :protected

### to update a qua level

- qua-levels/update/:id: :patch :protected

```js
{
    description: String,
    alias: String,
    descDegree: String,
    level: String
}
```

### to delete a qua level

- qua-levels/delete/:id: :delete :protected

## Routes for Qualification

### to create a new qualification

- qualification/create :post :protected

```js
{
    quaLevelsId: Number,
    description: String,
    alias: String,
}
```

### to get all qualifications

- qualification/get-all :get :protected

### to get a single qualification

- qualification/get/:id: :get :protected

### to update a qualification

- qualification/update/:id: :patch :protected

```js
{
    quaLevelsId: Number,
    description: String,
    alias: String,
}
```

### to delete a qualification

- qualification/delete/:id: :delete :protected

## Routes for Degree

### to create a new degree

- degree/create :post :protected

```js
{
    qualificationId: Number,
    description: String,
    alias: String,
}
```

### to get all degree

- degree/get-all :get :protected

### to get a single degree

- degree/get/:id: :get :protected

### to update a degree

- degree/update/:id: :patch :protected

```js
{
    qualificationId: Number,
    description: String,
    alias: String,
}
```

### to delete a degree

- degree/delete/:id: :delete :protected

## Routes for Payment Term

### to create a new payment term

- payment-term/create :post :protected

```js
{
    description: String(*),
    alias: String,
    iDays: Number,
}
```

### to get all payment term

- payment-term/get-all :get :protected

### to get a single payment term

- payment-term/get/:id: :get :protected

### to update a payment term

- payment-term/update/:id: :patch :protected

```js
{
    description: String,
    alias: String,
    iDays: Number,
}
```

### to delete a payment term

- payment-term/delete/:id: :delete :protected

## Routes for Measuring Unit

### to create a new measuring unit

- measuring-unit/create :post :protected

```js
{
    description: String(*),
    alias: String,
}
```

### to get all measuring unit

- measuring-unit/get-all :get :protected

### to get a single measuring unit

- measuring-unit/get/:id: :get :protected

### to update a measuring unit

- measuring-unit/update/:id: :patch :protected

```js
{
    description: String,
    alias: String,
}
```

### to delete a measuring unit

- measuring-unit/delete/:id: :delete :protected

## Routes for Delivery Term

### to create a new delivery term

- delivery-term/create :post :protected

```js
{
    description: String(*),
    alias: String,
    iDays: Number,
}
```

### to get all delivery term

- delivery-term/get-all :get :protected

### to get a single delivery term

- delivery-term/get/:id: :get :protected

### to update a delivery term

- delivery-term/update/:id: :patch :protected

```js
{
    description: String,
    alias: String,
    iDays: Number,
}
```

### to delete a delivery term

- delivery-term/delete/:id: :delete :protected

## Routes for Customer

### to create a new customer

- customer/create :post :protected

```js
{
    description: String(*),
    alias: String,
    address: String,
    countryId: Number(*),
    cityId: Number(*),
    sRegStNo: String,
    sItNo: String,
    phone: String,
    fax: String,
    cell: String,
    email: String,
    isWht: Boolean(*),
    whtTax: Number(*),
    iWhtTax: Number(*),
    isCreditLimit: Boolean(*),
    creditAmount: Number(*),
    contactPerson: String,
    iAccountId: Number,
}
```

### to get all customer

- customer/get-all :get :protected

### to get a single customer

- customer/get/:id: :get :protected

### to update a customer

- customer/update/:id: :patch :protected

```js
{
    description: String,
    alias: String,
    address: String,
    countryId: Number,
    cityId: Number,
    sRegStNo: String,
    sItNo: String,
    phone: String,
    fax: String,
    cell: String,
    email: String,
    isWht: Boolean,
    whtTax: Number,
    iWhtTax: Number,
    isCreditLimit: Boolean,
    creditAmount: Number,
    contactPerson: String,
    iAccountId: Number,
}
```

### to delete a customer

- customer/delete/:id: :delete :protected

## Routes for Vendor

### to create a new vendor

- vendor/create :post :protected

```js
{
    description: String(*),
    alias: String,
    address: String,
    countryId: Number(*),
    cityId: Number(*),
    sRegStNo: String,
    sItNo: String,
    phone: String,
    fax: String,
    cell: String,
    email: String,
    isWht: Boolean(*),
    whtTax: Number(*),
    iWhtTax: Number(*),
    isCreditLimit: Boolean(*),
    creditAmount: Number(*),
    contactPerson: String,
    iAccountId: Number,
}
```

### to get all vendor

- vendor/get-all :get :protected

### to get a single vendor

- vendor/get/:id: :get :protected

### to update a vendor

- vendor/update/:id: :patch :protected

```js
{
    description: String,
    alias: String,
    address: String,
    countryId: Number,
    cityId: Number,
    sRegStNo: String,
    sItNo: String,
    phone: String,
    fax: String,
    cell: String,
    email: String,
    isWht: Boolean,
    whtTax: Number,
    iWhtTax: Number,
    isCreditLimit: Boolean,
    creditAmount: Number,
    contactPerson: String,
    iAccountId: Number,
}
```

### to delete a vendor

- vendor/delete/:id: :delete :protected

## Routes for product Type

### to create a new product type

- product-type/create :post :protected

```js
{
    description: String,
    alias: String,
}
```

### to get all product type

- product-type/get-all :get :protected

### to get single product type

- product-type/get/:id: :get :protected

### to update a product type

- product-type/update/:id: :patch :protected

```js
{
    description: String,
    alias: String,
}
```

### to delete a product type

- product-type/delete/:id: :delete :protected
