select 
concat(s.store_id, "_", s.product_id) as stock_id,
s.store_id, 
s.product_id, 
p.product_name,
s.item_quantity as stock_quantity
from {{ref("stg_localbike__stocks")}} s 
left join {{ref("int_localbike__products")}} p on p.product_id=s.product_id