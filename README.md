# Point Of Sale Backend App RestApi

---

## Routes for User Auth

### to register a user

- user/register :post

```js
{
    email: String,
    password: String,
    displayName: String,
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

<!-- ## Routes for Menu Access Role

### to create a menu access role

- menu-access-role/create :post :protected

```js
{
    roleId: Number,
    menuIds: Number[],
}
``` -->
