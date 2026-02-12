SELECT order_id, 
customer_id, 
order_status, 
order_date, 
required_date, 
COALESCE(shipped_date, null) as shipped_date, -- !! des fois nulls 
store_id, 
staff_id
FROM {{source('localbike','orders')}}