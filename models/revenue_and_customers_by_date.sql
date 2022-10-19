select
    invoice_date,
    count(distinct customer_id) as number_of_customers,
    round(sum(total::float), 2) as revenue
from
    chinook.public.invoice
group by invoice_date