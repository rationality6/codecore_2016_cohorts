-- https://sql-lab.herokuapp.com/home

-- 1- Find the number of students named 'Milton'.

select count(*)
from students
where first_name ilike 'Milton%'

-- 2- List the `first_name`s that occur more than once in students, with the number occurrences of that name.

select first_name, count(*) as occurrences
from students
group by first_name
having count(first_name) > 1
order by occurrences desc

-- subquery way

select * from (select first_name, count(*) as occurrences from students group by first_name order by occurrences desc) subquery
where subquery.occurrences > 1;

-- subquery way #2

select * from (select first_name, count(*) as occurrences from students group by first_name ) subquery
where subquery.occurrences > 1
order by subquery.occurrences desc

-- 3- Refine the above query to list the 20 most common first_names among students, in order first of how common they are, and alphabetically when names have the same count.

select first_name, count(*) as occurrences
from students
group by first_name
having count(first_name) > 1
order by occurrences desc
limit 20

-- 1- Find the most expensive product

select * from products
order by price desc limit 1

-- 2- Find the cheapest product that is on sale

select * from products
where price > sale_price
order by price
limit 1

-- 3- Find the total value of all inventory in stock (use sale price)

select sum(sale_price*remaining_quantity) from products
where remaining_quantity > 0
