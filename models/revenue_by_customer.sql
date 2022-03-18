with customer_revenue as (
    select
        customer_id as customer_id,
        customer_first_name as first_name,
        customer_last_name as last_name,
        sum(total) as revenue
    from
        {{ ref('invoice_employee_customer') }}
    group by
        1,
        2,
        3
)
select
    customer_id,
    first_name || ' ' || last_name as customer_name,
    revenue
from
    customer_revenue