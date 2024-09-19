-- Rutime: 530ms | Beats: 88.80% (Depending on Connection) 
WITH first_orders AS (
    SELECT customer_id, MIN(order_date) AS first_order_date
    FROM delivery
    GROUP BY customer_id
)
SELECT 
    ROUND(SUM(CASE WHEN d.order_date = d.customer_pref_delivery_date THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS immediate_percentage
FROM delivery d
JOIN first_orders fo ON d.customer_id = fo.customer_id AND d.order_date = fo.first_order_date;
