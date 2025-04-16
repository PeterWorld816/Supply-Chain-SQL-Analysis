-- README.md

# Supply Chain SQL Analysis

A mini SQL project designed to showcase my ability to analyze supply chain data using SQL. This project simulates a business scenario relevant to the role of a Supply Chain Business Analyst at Meta.

## Objective
Analyze supplier efficiency, identify inventory loss due to expiration, and detect overstocked warehouses.

## Schema Overview
- **products**: Item master data
- **suppliers**: Supplier directory
- **warehouses**: Warehouse locations
- **inventory**: Current stock with expiration
- **orders**: Orders placed
- **deliveries**: Order fulfillment data

## Key Insights

### ✅ Supplier Efficiency
Using SQL, we determine the on-time delivery rate (within 7 days of order). For example:
> Out of 100K supply, 95K were delivered on time → **95% efficiency**

### ❌ Inventory Loss
We identify expired inventory that should be removed. For example:
> Warehouse 'New York' has 50,000 units of Rum expired on '2024-12-15'.

### ⚠️ Overstocked Warehouses
We highlight stock levels exceeding 30,000 units:
> Warehouse 'New York' and 'Chicago' show excess inventory.

## SQL Concepts Used
- JOINs
- Aggregates (SUM, COUNT)
- Conditional logic with `CASE`
- Filtering with `WHERE`, `HAVING`
- Date arithmetic

## How to Run
1. Use PostgreSQL
2. Run `schema.sql` to create tables
3. Run `data.sql` to populate data
4. Run `queries.sql` to see insights

---
