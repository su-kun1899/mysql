#!/bin/bash
# This script starts mysql docker container.

set -eu
cd `dirname $0`

# Configuration
readonly DATABASE_NAME="test"
readonly PORT_NUMBER="43306"
readonly CONTAINER_NAME="mysql-5-6"
readonly CONF_DIRECTORY="$(pwd)/conf.d"

# start
docker run \
  -d \
  --name mysql-docker \
  -p ${PORT_NUMBER}:3306 \
  -v ${CONF_DIRECTORY}:/etc/mysql/conf.d \
  --env MYSQL_DATABASE=${DATABASE_NAME} \
  --env MYSQL_ALLOW_EMPTY_PASSWORD=yes \
  mysql:5.6

echo "mysql docker container started."
echo "    mysql -u root -h 127.0.0.1 -P ${PORT_NUMBER} -A ${DATABASE_NAME}"

exit 0
