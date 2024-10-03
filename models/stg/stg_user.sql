with user_1 as (
    select * from {{ source('user', 'user_source_1') }}
),
user_2 as (
    select * from {{ source('user', 'user_source_2') }}
)

select * from user_1
union all
select * from user_2
