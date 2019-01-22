# Docker, Docker Compose, MySql And Go Experiments

``` docker
Docker Version

Client:
 Version:           18.09.0
 API version:       1.39
 Go version:        go1.10.4
 Git commit:        4d60db4
 Built:             Wed Nov  7 00:48:57 2018
 OS/Arch:           linux/amd64
 Experimental:      false

Server: Docker Engine - Community
 Engine:
  Version:          18.09.1
  API version:      1.39 (minimum version 1.12)
  Go version:       go1.10.6
  Git commit:       4c52b90
  Built:            Wed Jan  9 19:02:44 2019
  OS/Arch:          linux/amd64
  Experimental:     false
```
```docker-compose
Docker Compose Version

docker-compose version 1.23.2, build 1110ad01
docker-py version: 3.6.0
CPython version: 3.6.7
OpenSSL version: OpenSSL 1.1.0f  25 May 2017
```
## Commands
``` docker
docker-compose build or docker-compose up --build
docker-compose down
docker ps
docker logs 
docker inspect
```

##Change Mysql Database Access from .env file
``` MySql
ENV=local
DB_HOST=db_mysql
DB_NAME=test
DB_USER_NAME=zeshan
DB_PASSWORD=123456
```

## Database Query
```sql
Create Database: test
Create a Table Inside test Database:
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

```

## Browse Website
URL: http://localhost:8080
