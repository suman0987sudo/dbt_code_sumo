{{config(
    materialized = "table"
)}}
with source as(
    select * from {{source("shared","sample_macro")}}
),
final as(
    select id,{{ concat_line('name','last_name') }} as full_name  from source
)
select * from final