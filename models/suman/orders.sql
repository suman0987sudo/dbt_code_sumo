{{ config(
    materialized = 'table',
)}}

with tb1 as(
    select id,user_id,order_date from {{source("shared","STG_ORDERS_DATA")}}
)
select * from tb1

