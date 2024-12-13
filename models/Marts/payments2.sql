select
        orderid,
        sum(amount) as total_amount

    from {{ ref('stg_payments') }}
 group by orderid
 order by orderid