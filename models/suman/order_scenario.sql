{{config
    (
        materialized = "table"
)}}
with tb1 as(
    select * from {{source("shared","orders")}}
)
select * from tb1