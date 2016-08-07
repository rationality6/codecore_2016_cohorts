-- 1
SELECT * FROM products
ORDER BY remaining_quantity * sale_price DESC
limit 1;

-- 2
select * from products
where price > 25 and price < 50 and 0 < remaining_quantity
order by price desc limit 1

-- 3
SELECT * FROM products
where price > sale_price and 0 < remaining_quantity
order by price, name

-- 4
SELECT * FROM products
where price > sale_price and 0 < remaining_quantity
order by price, name
offset 10 limit 10

-- 5
SELECT avg(price) FROM products

-- 6
select avg(price) from product
where price > sale_price

-- 7
SELECT avg(price) FROM products
where price > sale_price and 0 < remaining_quantity

-- 8
update products
set remaining_quantity = 99
where name ilike '%paper%'

# checking query
select * from products
where name ilike '%paper%'
order by remaining_quantity desc;


-- 9
#Yes if you can acsess to transaction

-- 10
update products
set remaining_quantity = (random()*20)+5
where name ilike '%paper%' or name ilike '%still%'

#checking query
select * from products
where name ilike '%paper%' or name ilike '%still%'

-- 11

select * from products
where 0 < remaining_quantity
order by price
offset 10 limit 10

--12

select sale_price, count(sale_price) from products
group by

select * from products

--13
