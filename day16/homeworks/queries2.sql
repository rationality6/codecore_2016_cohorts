select avg(total_li_price) from (
select orders.id, sum(line_items.price*line_items.quantity) as total_li_price
from line_items inner join orders on orders.id = line_items.order_id
group by orders.id
order by id asc) as orders_total
