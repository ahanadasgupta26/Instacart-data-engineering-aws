SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM product_details;
SELECT * FROM aisles;
SELECT * FROM departments;
SELECT * FROM order_products;

SELECT COUNT(DISTINCT order_id) as reorder_count FROM order_products WHERE "reordered"=1;

SELECT op.product_id,pd.department_id,pd.aisle_id,pd.product_name,pd.department,pd.aisle FROM order_products op, product_details pd WHERE op.product_id = pd.product_id AND op.reordered = 1;

SELECT COUNT(order_id) as order_count,time_of_day FROM orders GROUP BY time_of_day;

SELECT order_dow, COUNT(order_id) as order_count FROM orders GROUP BY order_dow ORDER BY order_dow;
