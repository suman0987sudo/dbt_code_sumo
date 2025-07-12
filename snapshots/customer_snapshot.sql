{% snapshot customers_snapshot %}

{{
    config(
      target_schema='snapshot',
      unique_key='customer_id',
      strategy='timestamp',
      updated_at='signup_date'
    )
}}
SELECT * FROM {{ ref("customer_scenario") }}

{% endsnapshot %}
