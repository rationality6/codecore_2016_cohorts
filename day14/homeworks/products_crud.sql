-- https://sql-lab.herokuapp.com/home

-- 1- Create a product record with the following attributes: name: Premium Rustic Aluminum Gloves, description: Extra amazing gloves, price: 100, sale_price: 75, remaining_quantity: 40

INSERT INTO students (name,description,price,sale_prices,remaining_quantity)
VALUES('Premium Rustic Aluminum Gloves',
       'Extra amazing gloves',
       100,
       75,
       40)

--  2- Select that product from the database by fetching the last record (fetch a single record only)

SELECT *
FROM students
ORDER BY id DESC LIMIT 1

-- 3- Using the id you fetched from the previous exercise, update the remaining_quantity of that record to become 39

UPDATE students
SET age = 50
WHERE id =
        (SELECT id
         FROM students
         ORDER BY id DESC LIMIT 1)

-- 4- Delete that record using its id

delete from students
where id = (SELECT id FROM students ORDER BY id DESC LIMIT 1)

 -- 5- Select the number of products in the database

select count(*) as total_products from products
