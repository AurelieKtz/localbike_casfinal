select 
s.store_id, 
st.store_name
s.product_id, 
p.product_name,
s.quantity as stock_quantity
from {{ref("stg_localbike__stocks")}} s 
left join {{ref("stg_localbike__stores")}} st on st.store_id=s.store_id
left join {{ref("int_localbike__products")}} p on p.product_id=s.product_id