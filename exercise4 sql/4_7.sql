select product_id , product_description 
from order_line natural join product
group by product_id , product_description
having sum(ordered_quantity) = (
	select max(totalorder)
	from(
		select product_id , sum(ordered_quantity) as totalorder
		from order_line natural join product
		group by product_id
	)as sub
)
