select
    e.employee_id,
    e.first_name as employee_first_name,
    e.last_name as employee_last_name,
    c.first_name as customer_first_name,
    c.last_name as customer_last_name,
    c.support_rep_id,
    i.customer_id as customer_id,
    i.total,
    i.invoice_id
from
    chinook.public.invoice as i
    left join chinook.public.customer as c
    on i.customer_id = c.customer_id
    left join chinook.public.employee as e
    on c.support_rep_id = e.employee_id