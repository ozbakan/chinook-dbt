select
    billing_country,
    round(sum(total::float8), 2) as revenue,
    count(distinct customer_id) as number_of_customers
from
    chinook.public.invoice
group by
    billing_country