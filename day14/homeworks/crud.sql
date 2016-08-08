-- 1- Create a student record with the following attributes: first_name: John, last_name: Smith, Age: 45, email: john@smith.com registration_date: January 1st 2016, phone_number: 778.778.7787

insert into student (first_name, last_name, Age, email, registration_date, phone_number)
values ('John','Smith',45,"john@smith.com",'January 1st 2016','778.778.7787')

-- 2- Select that student from the database be fetching the last record

SELECT * FROM student_records WHERE phone_number="778.778.7787";

SELECT * FROM student_records ORDER BY created_at DESC LIMIT 1;

SELECT * FROM student_records Where email = 'john@smith.com';

-- 3- Using the id you fetched from the previous exercise, update the age of that record to become 50

update students
set age = 50
where id = (SELECT id FROM students ORDER BY created_at DESC LIMIT 1;);

-- 4- Delete that record using its id

delete from students
where id = (SELECT id FROM students ORDER BY created_at DESC LIMIT 1;);
