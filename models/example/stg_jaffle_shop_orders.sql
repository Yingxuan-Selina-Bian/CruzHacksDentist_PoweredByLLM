with

source as (
    select * from {{ source('jaffle_shop', 'orders') }}
)

select
    id as order_id,
    customer as customer_id,
    ordered_at as order_data,
    store_id as store_id,
    subtotal,
    tax_paid,
    order_total
from source