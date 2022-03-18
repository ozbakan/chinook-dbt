with employee_revenue_customers as (
    select
        employee_id as employee_id,
        first_name as first_name,
        last_name as last_name,
        count(distinct customer_id) as number_of_customers,
        sum(total) as revenue
    from
        {{ ref('invoice_employee_customer') }}
    group by
        1,
        2,
        3
)
select
    first_name || ' ' || last_name as employee_name,
    revenue,
    number_of_customers
from
    employee_revenue_customers