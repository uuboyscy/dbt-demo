docker run \
    -d \
    --name dbt-postgres \
    -v poc-postgre-dbt:/var/lib/postgresql/data \
    -p 5432:5432 \
    -e POSTGRES_USER=postgres \
    -e POSTGRES_PASSWORD=howdoyouturnthison \
    -e POSTGRES_DB=dbt \
    postgres:latest

docker cp create-tables.sql dbt-postgres:/create-tables.sql

docker exec -i dbt-postgres psql -U postgres -d dbt -f /create-tables.sql
