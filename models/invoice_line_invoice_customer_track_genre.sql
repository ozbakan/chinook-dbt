select
    t.genre_id as genre_id,
    g.name as genre_name,
    il.unit_price * il.quantity as revenue,
    i.billing_country as country,
    i.customer_id as customer_id
from
    invoice_line as il
    left join invoice as i using (invoice_id)
    left join customer as c using (customer_id)
    left join track as t using (track_id)
    left join genre as g using (genre_id)