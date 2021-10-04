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
