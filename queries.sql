-- queries.sql

-- 1. Supplier efficiency: % on-time deliveries (within 7 days)
SELECT s.name AS supplier, 
       COUNT(*) AS total_deliveries,
       SUM(CASE WHEN d.delivered_on - o.order_date <= 7 THEN 1 ELSE 0 END) AS on_time_deliveries,
       ROUND(SUM(CASE WHEN d.delivered_on - o.order_date <= 7 THEN 1 ELSE 0 END)::DECIMAL * 100 / COUNT(*), 2) AS on_time_rate
FROM deliveries d
JOIN orders o ON d.order_id = o.order_id
JOIN suppliers s ON d.supplier_id = s.supplier_id
GROUP BY s.name;

-- 2. Inventory lost due to expiration
SELECT p.name AS product, 
       w.location AS warehouse,
       SUM(i.quantity) AS expired_quantity
FROM inventory i
JOIN products p ON i.product_id = p.product_id
JOIN warehouses w ON i.warehouse_id = w.warehouse_id
WHERE expiration_date < CURRENT_DATE
GROUP BY p.name, w.location;

-- 3. Overstocked warehouses (threshold > 30,000)
SELECT w.location,
       SUM(i.quantity) AS total_stock
FROM inventory i
JOIN warehouses w ON i.warehouse_id = w.warehouse_id
GROUP BY w.location
HAVING SUM(i.quantity) > 30000;
