FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=123456
#ENV MYSQL_DATABASE=my_database
#ENV MYSQL_USER=my_user
#ENV MYSQL_PASSWORD=my_password

EXPOSE 3306

CMD ["mysqld"]