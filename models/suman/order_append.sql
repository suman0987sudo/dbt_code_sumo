{{config (
    materialized = "incremental",
    unique_key = 'id',
     incremental_strategy= "append"
)}}
select * from {{source("shared","STG_ORDERS_DATA")}}