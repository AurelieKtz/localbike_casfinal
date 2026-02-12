SELECT store_id, 
product_id,
quantity as item_quantity
FROM {{source('localbike','stocks')}}