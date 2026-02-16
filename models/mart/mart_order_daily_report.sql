SELECT o.order_date,
     o.store_id, 
     o.staff_fullname, 
    COUNT(DISTINCT oi.order_item_id) AS total_orders_item,
    sum(item_quantity) AS total_sold_items,
    AVG(total_order_item_amount_discount) AS average_total_order_amount, 
    100.0 * COUNT(DISTINCT CASE WHEN oi.discount > 0  THEN oi.order_item_id END) / COUNT(DISTINCT oi.order_item_id) AS prct_products_in_discount
FROM {{ ref('int_localbike__orders') }} AS o
LEFT JOIN {{ ref("int_localbike__order_items") }} as oi ON o.order_id=oi.order_id
GROUP BY o.order_date,
     o.store_id, 
     o.staff_fullname