select distinct customer_id , customer_name 
from customer natural join ordert
where order_date between '2020-01-10' and '2020-01-15'