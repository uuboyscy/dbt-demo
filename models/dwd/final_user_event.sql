with user_events as (
    select * from {{ ref('stg_user_event') }}
)

select distinct event_id, user_id, event_type, event_time
from user_events
