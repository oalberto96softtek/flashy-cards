FROM mysql:5.6
COPY ./config/init.sql /docker-entrypoint-initdb.d/init.sql
EXPOSE 3306
