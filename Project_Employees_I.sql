-- Rutime: 410ms | Beats: 99.22% (Depending on Connection)
select project_id, round(sum(e.experience_years)/count(project_id),2) as average_years from project p join employee e on p.employee_id = e.employee_id group by project_id;
