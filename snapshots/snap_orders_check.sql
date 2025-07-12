{% snapshot snap_orders_check%}
{{
    config(
        target_schema = 'snapshot',
        unique_key    = 'id',
        strategy     =  'check',
        check_cols   = ['user_id','order_date','status'],
        invalidate_hard_deletes = true
    )
}}
select * from {{source("shared","STG_ORDERS_DATA")}}

{%endsnapshot%}