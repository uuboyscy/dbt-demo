docker run \
    -d \
    --name dbt-postgres \
    -v poc-postgre-dbt:/var/lib/postgresql/data \
    -p 5432:5432 \
    -e POSTGRES_USER=postgres \
    -e POSTGRES_PASSWORD=howdoyouturnthison \
    -e POSTGRES_DB=dbt \
    postgres:latest
