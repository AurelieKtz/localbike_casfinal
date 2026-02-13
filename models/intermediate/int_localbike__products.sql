SELECT 
p.product_id,
p.product_name,
b.brand_name,
c.category_name,
p.model_year, 
p.item_price as product_item_price
FROM {{ref("stg_localbike__products")}} p
left join {{ref("stg_localbike__categories")}} c on c.category_id=p.category_id
left join {{ref("stg_localbike__brands")}} b on b.brand_id=p.brand_id