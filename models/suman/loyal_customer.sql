{{ config(materialized='table') }}

SELECT *
FROM {{ ref('cust_orders') }}
WHERE total_spent > 1000
