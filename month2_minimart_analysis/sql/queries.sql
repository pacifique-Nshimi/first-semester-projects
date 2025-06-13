---- BASIC QUERIES

-- 1. Retrieving all customers
SELECT * FROM customers c;

-- 2. Retrieving all products
SELECT * FROM products pr;

-- 3. Filtering products by category 
SELECT * FROM products pr
WHERE pr.category = 'Electronics';

-- 4. Listing the recent orders by date (descending order, most recent first)
SELECT * FROM orders ord
ORDER BY ord.order_date DESC;

-- AGGREGATION QUERIES

-- 5. Counting the total number of orders
SELECT COUNT(*) AS order_count
FROM orders ord;
-- 6. Calculating revenue per product (price × quantity, grouped by product)
SELECT 
    pr.product_id AS prod_id,
    pr.product_name AS prod_name,
    SUM(pr.price * ord.quantity) AS revenue
FROM products pr
INNER JOIN orders ord ON pr.product_id = ord.product_id
GROUP BY pr.product_id, pr.product_name
ORDER BY revenue DESC;

-- 7. Find the average product price
SELECT AVG(pr.price) AS avg_price
FROM products pr;

-- JOIN QUERIES

-- 8. INNER JOIN to get detailed order information (customer and product details)
SELECT 
    ord.order_id AS oid,
    cust.name AS cust_name,
    pr.product_name AS prod_name,
    ord.quantity AS qty,
    ord.order_date AS odate,
    pr.price AS unit_price
FROM orders ord
INNER JOIN customers cust ON ord.customer_id = cust.customer_id
INNER JOIN products pr ON ord.product_id = pr.product_id
ORDER BY pr.price DESC;


-- 9. LEFT JOIN to list all customers and their orders (including customers with no orders)
SELECT 
    cust.customer_id AS cid,
    cust.name AS cust_name,
    ord.order_id AS oid,
    ord.product_id AS pid,
    ord.quantity AS qty,
    ord.order_date AS odate
FROM customers cust
LEFT JOIN orders ord ON cust.customer_id = ord.customer_id;

-- 10. LEFT JOIN to show all products, even if they haven’t been ordered
SELECT 
    pr.product_id AS prod_id,
    pr.product_name AS prod_name,
    pr.category AS cat,
    pr.price AS unit_price,
    ord.order_id AS oid,
    ord.quantity AS qty,
    ord.order_date AS odate
FROM products pr
LEFT JOIN orders ord ON pr.product_id = ord.product_id
ORDER BY pr.price DESC;
