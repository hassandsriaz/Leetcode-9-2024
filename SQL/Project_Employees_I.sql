-- Rutime: 410ms | Beats: 99.22% (Depending on Connection)


SELECT 
    project_id, 
    ROUND(SUM(e.experience_years) / COUNT(project_id), 2) AS average_years 
FROM 
    project p 
JOIN 
    employee e 
ON 
    p.employee_id = e.employee_id 
GROUP BY 
    project_id;
