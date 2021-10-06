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

### to get user profile

- user/profile/:id: :get :protected

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
