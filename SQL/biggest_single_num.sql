-- Rutime: 331 | Beats: 92.74% (Depending on Connection) 
SELECT COALESCE(
    (SELECT num
     FROM mynumbers
     WHERE num IS NOT NULL
     GROUP BY num
     HAVING COUNT(num) <= 1
     ORDER BY num DESC
     LIMIT 1), NULL) as num;
