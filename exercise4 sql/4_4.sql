select product_id, product_description
from order_line natural join product
group by product_id, product_description
having 
    COUNT(*) = (
        select MAX(total_count)
        from (
            select product_id, 
                COUNT(*) as total_count
            from order_line natural join product
            group by product_id
        ) as sub
    )
