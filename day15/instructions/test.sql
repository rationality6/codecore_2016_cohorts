-- modify a table after it has been created
alter table students_id
add address text

alter table students
drop column phone_number

alter table students
modify email BLOB

-- constraints
-- adding a foreign key to the projects table
alter table students
add constraint projects_students_fk
foreign key (student_id) --this will be field name in our
-- projects table for out new foreign key
references students;

on delete cascade; --optional, if you want your projects associated with a student to be deleted when that student is deleted.
