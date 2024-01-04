#!/bin/bash

wget https://jdbc.postgresql.org/download/postgresql-42.7.1.jar

docker rmi hive

docker build --no-cache -t hive .

docker-compose up -d

rm -rf ./postgresql-42.7.1.jar