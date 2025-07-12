{{
    config(
        materialized = "table",
        post_hook = "truncate table {{source('shared','STG_STORES')}}"
    )
}}
with tb1 as(
    select * from {{source("shared","STG_STORES")}}
)
select * from tb1