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

### to get single user roles

- user/role/:id: :get :protected (where id stands for userId)

### to get user profile

- user/profile/:id: :get :protected

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
    icon: Image("formdata"),
}
```

### to get all menu

- menu/get-all :get :protected

### to get a single menu

- menu/get/:id: :get :protected

### to get all menu for a specific role id

- menu/get-all-for-role/:id :get :protected (where id stands for roleId)

### to update a new menu

- menu/update/:id: :post :protected

```js
{
    description: String,
    link: String,
    parentId: Number,
    icon: Image("formdata"),
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

- blood-group/update/:id :patch :protected

```js
{
    description: String,
    alias: String,
}
```

### to delete a blood group

- blood-group/delete/:id :delete :protected

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

- currency/get/:id :get :protected

### to update a currency

- currency/update/:id :patch :protected

```js
{
    description: String,
    alias: String,
    symbol: String,
}
```

### to delete a currency

- currency/delete/:id :delete :protected

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

- religion/get/:id :get :protected

### to update a religion

- religion/update/:id :patch :protected

```js
{
    description: String,
    alias: String,
}
```
