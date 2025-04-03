select sum(standard_price*ordered_quantity) as total_payment
from order_line natural join product
where order_id = 3
