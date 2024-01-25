# Commands to create Oracle container
```
docker pull gvenzl/oracle-xe:21-full

docker run -d -p 1521:1521 -e ORACLE_PASSWORD=SysPassword1 -v oracle-volume:/opt/oracle/XE21CFULL/oradata gvenzl/oracle-xe:21-full
```
# SQL Script to create Productos Table

1. clic on ```Database``` option on the left toolbar. Clic on ```Create connection```.
2. Select ```Oracle```. Use the default values and only capture the password: ```SysPassword1 ``` (with space as the last character). Clic on ```Connect```.
3. Go to ```pos.sql``` script. Clic on ```Execute```.
4. Refresh the tables ```Database``` option. The ```Productos``` tables should appear.

```
CREATE TABLE productos ( 
    idProductos NUMERIC(10,0) NOT NULL, 
    productName VARCHAR(100) NOT NULL, 
    productPrice DECIMAL(10,2) NOT NULL 
);
```

[Review the Docker mini-manual to additional reference](https://gist.github.com/ricardo-qm/5e9c60d0e7171a1ac3910dab3d6ecc59)
