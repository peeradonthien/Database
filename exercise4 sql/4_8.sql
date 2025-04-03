select customer_id , customer_name , count(*) as order_count
from customer natural join ordert
group by customer_id , customer_name
order by order_count desc
limit 3