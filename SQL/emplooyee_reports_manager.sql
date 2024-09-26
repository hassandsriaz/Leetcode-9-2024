-- Rutime: 640ms | Beats: 46.22% (Depending on Connection) 
select e.employee_id, e.name, count(e1.employee_id) as reports_count, round(avg(e1.age)) as average_age 
from employees e join employees e1 on e.employee_id = e1.reports_to 
group by e.employee_id order by employee_id
