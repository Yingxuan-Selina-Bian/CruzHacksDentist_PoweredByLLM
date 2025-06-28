with 

orders as (
    select * from {{ref('stg_jaffle_shop_orders')}}
),

customers as (
    select * from{{ref('stg_jaffle_shop_cust')}}
)

select *
from orders
left join customers
on orders.customer_id = customers.id