select
    product_id,
    sum(discount) as total_discount
from {{ ref('stg_sales_database__order_item') }}
group by product_id
having total_discount < 1 