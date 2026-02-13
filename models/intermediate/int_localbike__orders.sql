SELECT 
o.order_id, 
o.customer_id,
concat(c.first_name," ", c.last_name) as customer_fullname,
c.city as customer_city, 
c.state as customer_state,
o.order_status, 
o.order_date, 
o.shipped_date, 
o.store_id, 
concat(s.first_name, " ", s.last_name) as staff_fullname
FROM {{ref("stg_localbike__orders")}} o 
left join {{ref("stg_localbike__customers")}} c on o.customer_id=c.customer_id
left join {{ref("stg_localbike__staff")}} s on o.staff_id=s.staff_id
where 1=1
and s.active=1
