{% snapshot snap_customers_timestamp%}
{{
    config(
        target_schema = 'snapshot',
        unique_key    = 'id',
        strategy = 'timestamp',
        updated_at = 'updated_at',
        invalidate_hard_deletes = true
    )
}}
select * from {{source("shared","customers")}}

{%endsnapshot%}