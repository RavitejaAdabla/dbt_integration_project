select
        status,
        sum(amount) as total_amount

    from {{ ref('stg_payments') }}
 group by status
 order by total_amount desc