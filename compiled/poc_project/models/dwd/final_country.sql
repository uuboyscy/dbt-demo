with countries as (
    select * from "dbt"."dbt_stg"."stg_country"
)

select distinct country_id, country_name
from countries