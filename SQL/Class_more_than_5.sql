-- Rutime: 271ms | Beats: 90.34% (Depending on Connection) 
SELECT class FROM courses GROUP BY class HAVING count(student) >= 5