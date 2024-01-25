# Command to create MySQL container
```
docker build -t pos-mysql:0.1 .
```

# Command to run the MySQL container
```
docker run --detach --name=posmysql --publish 3306:3306 pos-mysql:0.1
```

# Command to debug the MySQL container
```
docker exec -it posmysql mysql -p

Enter password: 1234

mysql> show databases;
mysql> use pos;
mysql> show tables;
mysql> select * from users;
mysql> exit
```
[Review the Docker mini-manual to additional reference](https://gist.github.com/ricardo-qm/5e9c60d0e7171a1ac3910dab3d6ecc59)
