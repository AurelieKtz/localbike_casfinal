select
    order_item_id,
    sum(total_order_item_amount_no_discount) as total_amount
from {{ ref('stg_localbike__order_items') }}
group by order_item_id
having total_amount < 0