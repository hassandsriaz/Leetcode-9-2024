-- Rutime: 875ms | Beats: 82.15% (Depending on Connection) 
SELECT 
    contest_id, 
    ROUND(
        COUNT(contest_id) / (SELECT COUNT(user_id) FROM users) * 100, 
        2
    ) AS percentage 
FROM 
    users u 
JOIN 
    register r 
ON 
    u.user_id = r.user_id 
GROUP BY 
    contest_id 
ORDER BY 
    percentage DESC, 
    contest_id ASC;
