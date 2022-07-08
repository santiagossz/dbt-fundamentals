with orders as (
    select * from {{ref('stg_orders')}}
),
payments as (
    select * from {{ref('stg_payments')}}
)

select orders.*,
payments.amount, status as payment_status
from orders join payments 
on orders.order_id = payments.order_id