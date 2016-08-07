-- 1

INSERT INTO students (name,description,price,sale_prices,remaining_quantity)
VALUES('Premium Rustic Aluminum Gloves',
       'Extra amazing gloves',
       100,
       75,
       40)

-- 2

SELECT *
FROM students
ORDER BY id DESC LIMIT 1

-- 3

UPDATE students
SET age = 50
WHERE id =
        (SELECT id
         FROM students
         ORDER BY id DESC LIMIT 1)

-- 4

delete from students
where id =
(SELECT id
 FROM students
 ORDER BY id DESC LIMIT 1)
