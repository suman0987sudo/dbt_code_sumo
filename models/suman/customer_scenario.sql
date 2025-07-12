{{config
    (
        materialized = "table"
)}}
with tb1 as(
    select * from {{source("shared","customers")}}
)
select * from tb1