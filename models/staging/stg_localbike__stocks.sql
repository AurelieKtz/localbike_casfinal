SELECT store_id, 
product_id,
concat(store_id, "_", product_id) as store_product_id,
quantity as item_quantity
FROM {{source('localbike','stocks')}}