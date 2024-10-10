with user_event_1 as (
    select * from {{ source('user_event', 'user_event_source_1') }}
),
user_event_2 as (
    select * from {{ source('user_event', 'user_event_source_2') }}
)

select * from user_event_1
union all
select * from user_event_2
