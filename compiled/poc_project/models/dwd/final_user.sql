with users as (
    select * from "dbt"."dbt_stg"."stg_user"
)

select distinct user_id, user_name, created_at
from users