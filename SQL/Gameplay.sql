-- Rutime: 583ms | Beats: 53.53% (Depending on Connection) 
WITH first_login AS (
    SELECT player_id, MIN(event_date) AS first_login_date
    FROM activity
    GROUP BY player_id
)
SELECT ROUND(
    COUNT(DISTINCT f.player_id) / (SELECT COUNT(DISTINCT player_id) FROM activity), 2) AS fraction
FROM first_login f
JOIN activity a 
  ON f.player_id = a.player_id
  AND a.event_date = f.first_login_date + INTERVAL 1 DAY;
