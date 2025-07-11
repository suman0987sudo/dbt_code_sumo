{{ config(
    materialized = "table"
)}}

with tb1 as(
    select id,first_name,last_name from {{source("shared","STG_CUSTOMERS_DATA")}}
)
select * from tb1