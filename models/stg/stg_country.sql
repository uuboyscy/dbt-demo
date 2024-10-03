with country_1 as (
    select * from {{ source('country', 'country_source_1') }}
),
country_2 as (
    select * from {{ source('country', 'country_source_2') }}
)

select * from country_1
union all
select * from country_2
