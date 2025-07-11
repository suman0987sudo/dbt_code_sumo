{{ config(
    materialized='incremental',
    unique_key='order_id'
) }}

select
  order_id,
  user_id,
  amount,
  updated_at
from {{ ref("stg_orders") }}
{{ incremental_filter('updated_at') }}

