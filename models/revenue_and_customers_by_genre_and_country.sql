with genre_country_revenue_customers as (
    select
        genre_id as genre_id,
        genre_name as genre_name,
        country as country,
        count(
            distinct customer_id
        ) as number_of_customers,
        sum(revenue) as revenue
    from
        {{ ref('invoice_line_invoice_customer_track_genre') }}
    group by
        1,
        2,
        3
)
select
    genre_name,
    country,
    revenue,
    number_of_customers
from
    genre_country_revenue_customers
order by
    revenue DESC
limit 20
