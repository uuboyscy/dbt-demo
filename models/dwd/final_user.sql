with users as (
    select * from {{ ref('stg_user') }}
)

select distinct user_id, user_name, created_at
from users
