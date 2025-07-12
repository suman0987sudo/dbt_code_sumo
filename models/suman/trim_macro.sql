{{config(
    materialized = "table"
)}}
with source as(
    select * from {{source("shared","sample_macro")}}
),
final as(
    select id,{{ trim_spaces('name') }}  from source
)
select * from final



