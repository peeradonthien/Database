select postal_code, count(*) as customer_number
from customer
group by postal_code
order by customer_number DESC