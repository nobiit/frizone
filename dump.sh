#!/usr/bin/env bash
set -ex

docker exec -it -e MYSQL_PWD=root frizone-mariadb-1 mysqldump -uroot frizone | tee db.sql
