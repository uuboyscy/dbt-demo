with countries as (
    select * from {{ ref('stg_country') }}
)

select distinct country_id, country_name
from countries
