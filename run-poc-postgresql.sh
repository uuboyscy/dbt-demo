#!/bin/bash

echo "Building Postgres container and starting it."
docker run \
    -d \
    --name dbt-postgres \
    -v poc-postgre-dbt:/var/lib/postgresql/data \
    -p 5432:5432 \
    -e POSTGRES_USER=postgres \
    -e POSTGRES_PASSWORD=howdoyouturnthison \
    -e POSTGRES_DB=dbt \
    postgres:latest

echo "Copying create-tables.sql to dbt-postgres container"
docker cp create-tables.sql dbt-postgres:/create-tables.sql

sleep 3s

echo "Executing SQL script in dbt-postgres container"
docker exec -i dbt-postgres psql -U postgres -d dbt -f /create-tables.sql
