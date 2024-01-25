#Create MySQL Image for pos Application
FROM mysql
MAINTAINER iscrquinter@mail.com

ENV MYSQL_ROOT_PASSWORD 1234
ADD pos.sql /docker-entrypoint-initdb.d

EXPOSE 3306
