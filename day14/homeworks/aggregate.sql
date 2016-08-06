select count(*)
from students
where first_name ilike 'Milton%'

select first_name, count(*)
as occurences
from students
group by first_name
having count(first_name)>1
order by occurences desc;
