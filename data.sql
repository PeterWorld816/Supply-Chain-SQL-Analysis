-- data.sql

-- Insert sample products
INSERT INTO products (name, category, shelf_life_days) VALUES
('Whiskey', 'Alcohol', 365),
('Vodka', 'Alcohol', 365),
('Rum', 'Alcohol', 365);

-- Insert suppliers
INSERT INTO suppliers (name, country) VALUES
('GlassCo', 'USA'),
('BottlePro', 'Mexico');

-- Insert warehouses
INSERT INTO warehouses (location) VALUES
('Atlanta'),
('Chicago'),
('New York');

-- Insert inventory with expiration dates
INSERT INTO inventory (product_id, warehouse_id, quantity, expiration_date) VALUES
(1, 1, 5000, '2025-03-01'),
(2, 2, 15000, '2025-04-01'),
(3, 3, 50000, '2024-12-15'),
(1, 3, 40000, '2025-01-01');

-- Insert orders
INSERT INTO orders (product_id, warehouse_id, quantity, order_date) VALUES
(1, 1, 20000, '2025-01-01'),
(2, 2, 30000, '2025-01-05'),
(3, 3, 50000, '2025-01-10');

-- Insert deliveries
INSERT INTO deliveries (order_id, supplier_id, delivered_on) VALUES
(1, 1, '2025-01-03'),
(2, 2, '2025-01-06'),
(3, 1, '2025-01-18');
