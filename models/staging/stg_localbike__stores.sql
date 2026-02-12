SELECT 
store_id, 
store_name, 
phone as store_phone, 
email as store_email, 
street, 
city, 
state, 
zip_code
 FROM {{source('localbike','stores')}}