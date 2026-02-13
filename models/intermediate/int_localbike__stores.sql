select 
s.store_id, 
s.store_name, 
s.city, 
s.state
from {{ref("stg_localbike__stores")}} s 
