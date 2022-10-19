select
    sum(unit_price * quantity) as revenue
from
    chinook.public.invoice_line