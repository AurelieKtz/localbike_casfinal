select 
staff_id, 
first_name,
last_name, 
email, 
phone,
active,
store_id, 
COALESCE (manager_id, null) as manager_id
FROM {{source('localbike','staff')}}