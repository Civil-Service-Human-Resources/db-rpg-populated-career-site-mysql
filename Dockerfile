# Mysql version on current RDS is 5.6.37 so keeping version as close as possible.
FROM mysql:5.6.39

COPY ./wpress_dump.sql /docker-entrypoint-initdb.d/wpress_dump.sql
