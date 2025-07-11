{{ config(
    materialized="dynamic_table",
    target_lag="1 minutes",
    snowflake_warehouse="dbt_wh",
) }}
select * from {{source("shared","EMPLOYEES_dynamic")}}