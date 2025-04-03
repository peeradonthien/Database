select customer_id , customer_name 
from customer natural join ordert
group by customer_id , customer_name
having 
	count(*) = (
		select max(numoforder)
		from(
			select customer_id , count(*) as numoforder
			from customer natural join ordert
			group by customer_id
		)as sub
	)

/*
order by count(*) desc
limit 1
*/