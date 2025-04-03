select customer_id , customer_name
from customer
except
select customer_id , customer_name
from customer natural join ordert
order by customer_id 