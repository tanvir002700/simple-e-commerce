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
