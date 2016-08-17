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


ALIAS TABLE NAMES
SELECT st.id, st.first_name, st.last_name
FROM students AS st
LIMIT 10;



select enrolments.course_id, courses.title, round(avg(enrolments.score),2)
from enrolments left join courses
on enrolments.course_id = courses.id
group by enrolments.course_id, courses.title
order by avg(enrolments.score)



select count(*) as num_students_enrolled
from courses left join enrolments
on enrolments.course_id = courses.id
--where courses.title = 'Up-sized hybrid project';

select count(*) as num_students_enrolled
from courses left join enrolments
on enrolments.course_id = courses.id
group by courses.id
--where courses.title = 'Up-sized hybrid project';
--select * from students


select courses.title, count(*) as num_students_enrolled
from courses left join enrolments
on enrolments.course_id = courses.id
group by courses.id
--where courses.title = 'Up-sized hybrid project';
--select * from students
