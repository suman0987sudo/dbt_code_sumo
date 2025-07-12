with customer as(
    select id,first_name,last_name from {{source("shared","STG_CUSTOMERS_DATA")}}
),
orders as(
    select id as customer_id,user_id,order_date,status from {{source("shared","STG_ORDERS_DATA")}}
),

customer_orders as(
    select * from customer c left join orders o on c.id = o.customer_id
)
select * from customer_orders