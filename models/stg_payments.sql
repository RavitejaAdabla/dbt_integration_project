    select
        id as payment_id,
        orderid,
        paymentmethod,
        amount,
        status

    from {{ source('stripe', 'payment') }}