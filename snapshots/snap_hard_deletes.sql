{% snapshot snap_hard_deletes%}
{{
    config(
        target_schema = 'snapshot',
        unique_key    = 'id',
        strategy = 'timestamp',
        updated_at = 'updated_at',
        hard_deletes = 'new_record'
    )
}}
select * from {{source("shared","customers")}}

{%endsnapshot%}