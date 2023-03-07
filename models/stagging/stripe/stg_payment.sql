select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,

    -- amount is stored in cents, converting it to dollars using macro
    {{cent_to_dollar('amount',4)}} as amount,
    created as created_at

from {{source('stripe','payment')}}