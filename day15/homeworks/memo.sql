-- https://sql-lab.herokuapp.com/home

update orders
set customerid = 2
where orderid = (select orderid from orders
order by customerid desc limit 1)
