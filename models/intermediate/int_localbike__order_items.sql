select 
order_id, 
item_id, 
order_item_id, 
product_id, 
item_quantity, 
price_quantity, 
discount, 
sum(total_order_item_amount_discount) as total_order_item_amount_discount,
sum(total_order_item_amount_no_discount) as total_order_item_amount_no_discount
from {{ref("stg_localbike__order_items")}}
group by 
order_id, 
item_id, 
order_item_id, 
product_id, 
item_quantity, 
price_quantity, 
discount