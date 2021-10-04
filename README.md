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

### to create a new role

- role/create :post :protected

```js
{
    description: String,
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
