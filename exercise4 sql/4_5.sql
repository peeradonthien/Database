select customer_id , customer_name , count(*) as number_of_order 
from customer natural join ordert
group by customer_id , customer_name
order by number_of_order DESC