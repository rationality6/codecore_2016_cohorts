-- Assignment: [demo] Line Items for products
--
-- 1- Select all the products that have orders and their orders
SELECT products.name, COUNT(orders) FROM products
INNER JOIN line_items ON line_items.product_id = products.id
INNER JOIN orders ON orders.id = line_items.order_id

-- 2- Select all the products and their orders
--
-- [Note] the price in the line_items table is price per unit and not total price
SELECT products.name, COUNT(orders) FROM products
INNER JOIN line_items ON line_items.product_id = products.id
INNER JOIN orders ON orders.id = line_items.order_id
GROUP BY products.name
ORDER BY count DESC;

--BETWEEN '2015-07-01' AND '2015-07-31'
--NOW() - INTERVAL 1 MONTH

--SELECT products.name, COUNT(orders) FROM products
--INNER JOIN line_items ON line_items.product_id = products.id
--INNER JOIN orders ON orders.id = line_items.order_id
--GROUP BY products.name
--ORDER BY count DESC;


--orders table has order id
--line items table has assoc between order id and products
SELECT * FROM orders
WHERE completed_on
BETWEEN '2016-01-01' AND '2016-01-31';
--BETWEEN NOW() AND (NOW() - INTERVAL '1 MONTH');



--Assignment: [lab] Queries 1
--Write the following SQL Queries:
--1- Find the average line item total price for orders that were completed last month
--2- Select product titles and prices that sold last month and the lowest they were sold at.
--[Note] the price in the line_items table is price per unit and not total price
--SELECT order.id, AVG(price*quantity) FROM line_items
--INNER JOIN orders
--ON orders.id = line_items.order_id
--WHERE completed_on
--BETWEEN '2016-01-01' AND '2016-01-31'
--GROUP BY orders.id

--SELECT AVG(price) AS avg_line_item_price FROM line_items
--INNER JOIN orders ON line_items.order_id = orders.id
--WHERE orders.created_at BETWEEN '2016-01-01' AND '2016-01-31';

--2
--SELECT products.name, products.price, line_items.price AS sold_items FROM products
--INNER JOIN line_items
--ON products.id = line_items.product_id
--INNER JOIN orders
--ON line_items.order_id = orders.id
--WHERE completed_on
--BETWEEN '2016-01-01' AND '2016-01-31'

SELECT products.name, MIN(line_items.price) AS lowest_price, COUNT(*)
FROM line_items
INNER JOIN products ON line_items.product_id = products.id
GROUP BY products.name
ORDER BY lowest_price DESC;



-- morning cohort 14!!!
--SELECT * FROM projects WHERE student_id = 244;
--SELECT * FROM students WHERE id = 244;

-- if a student does not have a project, they will not be displayed
--SELECT * FROM students INNER JOIN projects ON projects.student_id = students.id;

-- slide exercise 2
-- how many projects does each student have?
SELECT students.first_name, students.last_name, COUNT(*) AS num_projects
FROM students INNER JOIN projects
ON projects.student_id = students.id
GROUP BY students.id
ORDER BY num_projects DESC
LIMIT 10;


SELECT *
FROM students
INNER JOIN enrolments
ON students.id = enrolments.student_id
INNER JOIN courses
ON courses.id = enrolments.course_id
WHERE courses.title = 'Up-sized hybrid project'
LIMIT 10;


-- ALIAS TABLE NAMES
SELECT st.id, st.first_name, st.last_name
FROM students AS st
LIMIT 10;


-- LEFT JOIN
SELECT *
FROM students LEFT JOIN projects
ON projects.student_id = students.id
WHERE projects.id IS NULL
LIMIT 100;


--LEFT JOIN EXERCISE
SELECT enrolments.course_id, courses.title, ROUND(AVG(enrolments.score), 2)
FROM enrolments LEFT JOIN courses
ON enrolments.course_id = courses.id
GROUP BY courses.title, enrolments.course_id
ORDER BY AVG(enrolments.score)
LIMIT 10;


--how many students are enrolled in 'Up-sized hybrid project'
SELECT courses.title, COUNT(*) AS num_students_enrolled
FROM courses LEFT JOIN enrolments
ON courses.id = enrolments.course_id
GROUP BY courses.id
LIMIT 10;


SELECT * FROM (SELECT courses.title, COUNT(*) AS num_students_enrolled
FROM courses LEFT JOIN enrolments
ON courses.id = enrolments.course_id
GROUP BY courses.id) subQuery
WHERE subQuery.num_students_enrolled > 10
ORDER BY subQuery.num_students_enrolled DESC;
--LIMIT 10;



-- modify a table after it has been created
ALTER TABLE students
ADD address TEXT

ALTER TABLE students
DROP COLUMN phone_number

ALTER TABLE students
MODIFY email BLOB

--CONSTRAINTS
--adding a foreign key to the projects table
ALTER TABLE projects
ADD CONSTRAINT projects_students_fk
FOREIGN KEY (student_id) --this will be field name in our projects table for our new foreign key
REFERENCES students
ON DELETE CASCADE; --optional, if you want your projects associated with a student to be deleted when that student is deleted.
