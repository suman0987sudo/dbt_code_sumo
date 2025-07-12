select
  order_id,
  user_id,
  amount,
  updated_at
from {{ source("shared","stg_sales") }}
