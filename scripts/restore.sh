#!/bin/bash
set -o allexport
source .env
set +o allexport
cat $1 |  docker-compose exec  -T mysql sh -c "mysql -u$MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE"