# Point Of Sale Backend App RestApi

---

## First of all make a .env file same as .env.example

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
