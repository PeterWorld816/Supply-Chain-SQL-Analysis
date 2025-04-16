-- schema.sql

-- Products table
CREATE TABLE products (
  product_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  category VARCHAR(50),
  shelf_life_days INT
);

-- Suppliers table
CREATE TABLE suppliers (
  supplier_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  country VARCHAR(50)
);

-- Warehouses table
CREATE TABLE warehouses (
  warehouse_id SERIAL PRIMARY KEY,
  location VARCHAR(100)
);

-- Inventory table
CREATE TABLE inventory (
  inventory_id SERIAL PRIMARY KEY,
  product_id INT REFERENCES products(product_id),
  warehouse_id INT REFERENCES warehouses(warehouse_id),
  quantity INT,
  expiration_date DATE
);

-- Orders table
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  product_id INT REFERENCES products(product_id),
  warehouse_id INT REFERENCES warehouses(warehouse_id),
  quantity INT,
  order_date DATE
);

-- Deliveries table
CREATE TABLE deliveries (
  delivery_id SERIAL PRIMARY KEY,
  order_id INT REFERENCES orders(order_id),
  supplier_id INT REFERENCES suppliers(supplier_id),
  delivered_on DATE
);
