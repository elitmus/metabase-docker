#!/bin/bash
set -o allexport
source .env
set +o allexport
docker-compose exec mysql mysqldump -u$MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE  | gzip  > ./db_backup/dump_`date +%d-%m-%Y"_"%H_%M_%S`.sql.gz