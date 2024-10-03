-- models/mart/mart_user_events_with_country.sql
with user_data as (
    select user_id, user_name, created_at
    from {{ ref('final_user') }}
),
user_events as (
    select event_id, user_id, event_type, event_time
    from {{ ref('final_user_event') }}
),
country_data as (
    select country_id, country_name
    from {{ ref('final_country') }}
)

select
    ue.event_id,
    ue.user_id,
    ud.user_name,
    ue.event_type,
    ue.event_time,
    cd.country_name
from user_events ue
join user_data ud on ue.user_id = ud.user_id
left join country_data cd on ud.user_id = cd.country_id  -- assuming there's a relation
