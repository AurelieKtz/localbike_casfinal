WITH product_sales AS (

    SELECT
        p.product_id,
        p.product_name,
        p.brand_name,
        p.category_name,
        p.model_year,
        p.product_item_price,
        SUM(oi.item_quantity) AS total_quantity
    FROM {{ ref('int_localbike__products') }} p
    lEFT JOIN {{ ref('int_localbike__order_items') }} oi  ON p.product_id = oi.product_id
    GROUP BY
        p.product_id,
        p.product_name,
        p.brand_name,
        p.category_name,
        p.model_year,
        p.product_item_price
),

rank_product AS (
    SELECT
       product_id,
        product_name,
        brand_name,
        category_name,
        model_year,
        product_item_price,
        total_quantity,
        ROW_NUMBER() OVER (ORDER BY total_quantity DESC) AS product_ranking
    FROM product_sales
),

rank_categ AS (
    SELECT
        category_name,
        SUM(total_quantity) AS category_quantity,
        ROW_NUMBER() OVER (ORDER BY SUM(total_quantity) DESC) AS category_ranking
    FROM product_sales
    GROUP BY category_name
),

rank_brand AS (
    SELECT
        brand_name,
        SUM(total_quantity) AS brand_quantity,
        ROW_NUMBER() OVER (ORDER BY SUM(total_quantity) DESC) AS brand_ranking
    FROM product_sales
    GROUP BY brand_name
)

SELECT 
    rp.product_id, 
    rp.product_name, 
    rp.product_ranking,
    rp.brand_name,
    rb.brand_ranking,
    rp.category_name,
    rc.category_ranking,
    rp.model_year, 
    rp.product_item_price

FROM rank_product rp
LEFT JOIN rank_categ rc   ON rp.category_name = rc.category_name
LEFT JOIN rank_brand rb   ON rp.brand_name = rb.brand_name
