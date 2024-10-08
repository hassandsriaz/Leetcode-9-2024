-- Rutime: 495ms | Beats: 96.70% (Depending on Connection) 
SELECT 
    DATE_FORMAT(TRANS_DATE, '%Y-%m') AS month, 
    country, 
    COUNT(id) AS trans_count, 
    SUM(IF(STATE = 'approved', 1, 0)) AS approved_count, 
    SUM(amount) AS trans_total_amount, 
    SUM(IF(STATE = 'approved', amount, 0)) AS approved_total_amount
FROM 
    transactions
GROUP BY 
    month, 
    country;
