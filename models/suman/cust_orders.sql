{{ config(materialized='table') }}

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(o.amount) AS total_spent,
    COUNT(o.order_id) AS order_count
FROM {{ ref('customer_scenario') }} c
LEFT JOIN {{ ref('order_scenario') }} o ON c.customer_id = o.customer_id
GROUP BY 1, 2, 3
