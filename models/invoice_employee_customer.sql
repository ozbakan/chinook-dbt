select
    e.employee_id,
    e.first_name,
    e.last_name,
    c.support_rep_id,
    i.customer_id,
    i.total
from
    chinook.public.invoice as i
    left join chinook.public.customer as c
    on i.customer_id = c.customer_id
    left join chinook.public.employee as e
    on c.support_rep_id = e.employee_id