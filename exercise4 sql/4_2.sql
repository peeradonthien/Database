select postal_code, count(*) as customer_number
from customer
group by postal_code
having count(*) > 1
order by customer_number DESC
