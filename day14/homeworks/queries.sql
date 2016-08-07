-- 1- Select the product whose stock has the most value (use sale price)

SELECT * FROM products
ORDER BY remaining_quantity * sale_price DESC
limit 1;

-- 2- Select the most expensive product whose price is between 25 and 50 with remaining quantity

select * from products
where price > 25 and price < 50 and 0 < remaining_quantity
order by price desc limit 1

-- 3- Select all products on sale with remaining quantity ordered by their price and then their name

SELECT * FROM products
where price > sale_price and 0 < remaining_quantity
order by price, name

-- 4- Select the second set 20 results based on the previous query

SELECT * FROM products
where price > sale_price and 0 < remaining_quantity
order by price, name
offset 10 limit 10

-- 5- Find the average price of all products

SELECT avg(price) FROM products

-- 6- Find the average price of all products that are on sale

select avg(price) from product
where price > sale_price

-- 7- Find the average price of all products that are on sale with remaining quantity

SELECT avg(price) FROM products
where price > sale_price and 0 < remaining_quantity

-- 8- Update all the products whose name contains `paper` (case insensitive) to have a remaining quantity of 0

update products
set remaining_quantity = 99
where name ilike '%paper%'

# checking query

select * from products
where name ilike '%paper%'
order by remaining_quantity desc;


-- 9- Is it possible to revert the query in question 8?

#Yes if you can acsess to the transaction.

-- 10- Update all the products whose name contains `paper` or `steel` to have a remaining quantity of a random number between 5 and 25

update products
set remaining_quantity = (random()*20)+5
where name ilike '%paper%' or name ilike '%steel%'


#checking query

select * from products
where name ilike '%paper%' or name ilike '%steel%'


-- 11- Select the second set of 10 cheapest products with remaining quantity

select * from products
where 0 < remaining_quantity
order by price
offset 10 limit 10


-- 12- Build a query that groups the products by their sale price and show the number of products in that price and the sum of remaining quantity. Label the count `product_count`

SELECT sale_price, COUNT(*), SUM(remaining_quantity) AS product_count
FROM products
GROUP BY sale_price;

-- 13- [stretch] Update the most expensive product to have double its quantity in a single query

update products
set remaining_quantity = (select remaining_quantity from products order by price desc limit 1)*2
where name = (select name from products order by price desc limit 1)

select * from products order by price desc limit 1
