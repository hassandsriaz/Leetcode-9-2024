-- Rutime: 539ms | Beats: 64.51% (Depending on Connection) 
SELECT c.customer_id
FROM customer c
JOIN Product p ON c.product_key = p.product_key
GROUP BY c.customer_id
HAVING COUNT(DISTINCT p.product_key) = (SELECT COUNT(*) FROM Product);
