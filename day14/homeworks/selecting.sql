-- 1- Select the first 10 students whose ages are between 35 and 45

select * from students
where age between 35 and 45
limit 10

-- 2- Select the third set of 10 students whose ages are more than 25 and whose first names contain `th`. The students must be ordered by their id then first name in a descending order.

select * from students
where age > 25 and first_name ilike '%th%'
order by id, first_name desc
offset 20 limit 10

-- 3- Select the 10 oldest students (You should ignore students with an age that is `NULL`)

select * from students
where age is not null
order by age desc
limit 10

-- 4- Select all students with age 45 whose last names contain the letter n

select * from students
where age > 45 and last_name ilike '%n%'

-- 5- Select all the products that are on sale

select * from products
where sale_price < price

-- 6- Select all the products that are on sale and have remaining items in stock ordered by the sale price in ascending order

select * from products
where sale_price < price and 0 < remaining_quantity
order by sale_price

-- 7- Select all the products priced between 25 and 50 (regular price) and that are on sale

select * from products
where price between 25 and 50 and price > sale_price
