-- Rutime: 231ms | Beats: 84.96% (Depending on Connection)
SELECT *,
       CASE 
           WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes'
           ELSE 'No'
       END AS triangle
FROM triangle;
