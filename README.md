# A simple E commerce 

## Setup with Docker
```
$ docker-compose build
$ docker-compose up
```
After boot up the puma, db, elasticsearch server, open a new terminal and run
```
$ docker-compose run app rake db:setup
```
## Access

- admin
  email: admin@email.com
  password: 123456
- user
  eamil: test@email.com
  password: 123456

## Screen shots
### User
![](https://github.com/tanvir002700/simple-e-commerce/blob/master/screenshot/user_login.png)
![](https://github.com/tanvir002700/simple-e-commerce/blob/master/screenshot/user_shop.png)
![](https://github.com/tanvir002700/simple-e-commerce/blob/master/screenshot/user_cart.png)
![](https://github.com/tanvir002700/simple-e-commerce/blob/master/screenshot/user_checkout.png)
![](https://github.com/tanvir002700/simple-e-commerce/blob/master/screenshot/user_order_detail.png)
![](https://github.com/tanvir002700/simple-e-commerce/blob/master/screenshot/user_all_orders.png)
## Admin
![](https://github.com/tanvir002700/simple-e-commerce/blob/master/screenshot/admin_create_product.png)
![](https://github.com/tanvir002700/simple-e-commerce/blob/master/screenshot/admin_all_products.png)
![](https://github.com/tanvir002700/simple-e-commerce/blob/master/screenshot/admin_all_orders.png)
![](https://github.com/tanvir002700/simple-e-commerce/blob/master/screenshot/admin_order_update.png)


