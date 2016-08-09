select student_id, count(project_id) as projects from students
inner join project_id on projects.students_id = students_id
limit 10;



select students.first_name, students.last_name, count(*) as num_projects
from students inner join projects
on projects.student_id = students.id
group by students.id
order by num_projects desc
LIMIT 10;

select * from students inner join projects
on projects.student_id = students.id;


select *
from students
inner join enrolments
on students.id = enrolments.student_id
inner join courses
on courses.id = enrolments.course_id
limit 10;
--where title = 'Up-sized hybrid project'


select students.created_at , enrolments.created_at,courses.created_at
from students
inner join enrolments
on students.id = enrolments.student_id
inner join courses
on courses.id = enrolments.course_id
limit 10;
--where title = 'Up-sized hybrid project'


select st.id, st.first_name,st.last_name
from students as st
limit 10;


select *
from students left join projects
on projects.student_id = students.id
limit 10;


select * from (select courses.title, count(*) as num_students_enrolled
from courses left join enrolments
on enrolments.course_id = courses.id
group by courses.id) subquery
where subquery.num_students_enrolled > 10
order by subquery.num_students_enrolled desc
