SELECT customer_id, 
first_name, 
last_name, 
COALESCE(phone, null) as phone,
email, 
street, 
city, 
state, 
zip_code 
FROM {{source('localbike','customers')}}