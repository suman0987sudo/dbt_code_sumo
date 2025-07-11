{{ config(materialized="incremental",
         incremental_strategy="insert_overwrite",
         
) }}

select * from {{source("shared","STG_ORDERS_DATA")}} 