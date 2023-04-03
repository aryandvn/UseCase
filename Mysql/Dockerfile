FROM mysql:5.7

USER root

ENV MYSQL_ROOT_PASSWORD=root

COPY ./mysql/ /var/lib/mysql/
COPY ./docker-entrypoint-initdb.d ./docker-entrypoint-initdb.d
