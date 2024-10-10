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

## Deploy documentaion on GitHub Pages
Following commands deploy a GitHub Pages on [dbt-documentation](https://uuboyscy.github.io/dbt-demo/#!/overview)
```bash
git checkout main

git branch -D gh-pages || git push origin :gh-pages

git checkout --orphan gh-pages
dbt docs generate
git add -f target
git commit -m "github pages" target
git subtree push --prefix target origin gh-pages
git checkout main
```

## Sample models
Rename following folder to `models`.
1. models_basic
    > Basic sample.
2. models_documentation
    > How to configure documentation.
3. models_macros_docs
    > Maintain common docs using macros. \
    > Folder `docs/` is required.
