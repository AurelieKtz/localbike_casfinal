SELECT order_id, 
item_id, 
concat(order_id, "_", item_id) as order_item_id,
product_id, 
quantity as item_quantity, 
list_price as price_quantity, 
discount,
quantity * (list_price - list_price * discount) as total_order_item_amount_discount,
quantity * list_price as total_order_item_amount_no_discount
FROM {{source('localbike','order_items')}}