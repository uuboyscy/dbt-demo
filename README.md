## Commands
```bash
# Install dbt and required packages
poetry install

# Initiate PostgreSQL
sh run-poc-postgresql.sh

# Build other tables via dbt
dbt run

# Documentation server
dbt docs generate
dbt docs serve
```
