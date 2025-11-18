-----------Q1-----------
SELECT * FROM SALES;
SELECT * FROM PRODUCTS;
UPDATE products SET category = 'Electronic', price = 5000.00 WHERE product_id = 101;
UPDATE products SET category = 'Electronic', price = 5000.00 WHERE product_id = 102;
UPDATE products SET category = 'Clothing', price = 15000.00 WHERE product_id = 201;
UPDATE products SET category = 'Clothing', price = 12000.00 WHERE product_id = 202;
UPDATE products SET category = 'Funiture', price = 30000.00 WHERE product_id = 301;
UPDATE products SET category = 'Funiture', price = 25000.00 WHERE product_id = 302;
COMMIT;

SELECT category, SUM(PRICE) FROM PRODUCTS GROUP BY category WHERE
SUM(PRICE) > 10000;

SELECT category, SUM(PRICE) FROM PRODUCTS WHERE
SUM(PRICE) > 10000 GROUP BY category ;

SELECT category, SUM(PRICE) FROM PRODUCTS GROUP BY category HAVING
SUM(PRICE) > 10000;

SELECT category, SUM(PRICE) FROM PRODUCTS HAVING
SUM(PRICE) > 10000 GROUP BY category ;

-----------Q2-----------
SELECT * FROM ORDERS;

SELECT customer_id, AVG(order_total) AS avg_order
FROM orders
WHERE AVG(ORDER_TOTAL) > 1000
GROUP BY customer_id;

SELECT customer_id, AVG(ORDER_TOTAL) AS avg
FROM ORDERS
HAVING AVG(ORDER_TOTAL) > 500
GROUP BY customer_id;

-----------Q4-----------
SELECT * FROM EMPLOYEES;

-----------Q6-----------
SELECT * FROM SALES;
SELECT product_id, SUM(AMOUNT)
FROM sales
GROUP BY product_id
WHERE AMOUNT > 1000;

SELECT product_id, SUM(AMOUNT)
FROM sales
WHERE AMOUNT > 1000
GROUP BY product_id;

SELECT product_id, SUM(AMOUNT)
FROM sales
GROUP BY product_id
HAVING SUM(AMOUNT) > 1000;

SELECT product_id, SUM(AMOUNT)
FROM sales
HAVING SUM(AMOUNT) > 1000
GROUP BY product_id;

-----------Q7-----------
SELECT * FROM ORDERS;

SELECT customer_id, COUNT(*) 
FROM orders 
WHERE order_date >= SYSDATE - 1000
GROUP BY customer_id;

SELECT customer_id, COUNT(*) 
FROM orders 
GROUP BY customer_id 
HAVING order_date >= SYSDATE - 30;

SELECT customer_id, SUM(order_id) FROM orders WHERE order_date >=
SYSDATE - 1000 GROUP BY customer_id;

SELECT customer_id, COUNT(DISTINCT order_id) FROM orders GROUP BY
customer_id, order_date WHERE order_date >= SYSDATE - 30;

----------Q8------------
SELECT * FROM PRODUCTS;
SELECT CATEGORY, PRODUCT_NAME, SUM(PRICE) AS total_sales
FROM PRODUCTS
GROUP BY CUBE(CATEGORY, PRODUCT_NAME);
