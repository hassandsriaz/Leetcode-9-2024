-- Rutime: 304ms | Beats: 93.32% (Depending on Connection)

SELECT 
    query_name, 
    ROUND(SUM(COALESCE(rating, 0) / COALESCE(position, 1)) / COUNT(query_name), 2) AS quality,
    ROUND(
        (SUM(CASE WHEN COALESCE(rating, 0) < 3 THEN 1 ELSE 0 END) / COUNT(query_name)) * 100, 2
    ) AS poor_query_percentage
FROM 
    queries
WHERE 
    query_name IS NOT NULL
GROUP BY 
    query_name;