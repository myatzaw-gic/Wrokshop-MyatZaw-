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

--A
SELECT MAX(salary) FROM EMPLOYEES WHERE salary < (SELECT MAX(salary)
FROM EMPLOYEES);

--B
SELECT salary FROM EMPLOYEES ORDER BY salary DESC LIMIT 1,1;

--c
SELECT MIN(salary) FROM (SELECT DISTINCT salary FROM EMPLOYEES
ORDER BY salary DESC) WHERE ROWNUM <= 2;

--D
SELECT salary FROM (SELECT salary, DENSE_RANK() OVER (ORDER BY salary
DESC) AS rank FROM EMPLOYEES) WHERE rank = 2;

-----------Q5-----------
SELECT * FROM sales;

--A
SELECT product_id, SUM(AMOUNT) FROM sales GROUP BY product_id HAVING
SUM(AMOUNT) > AVG(AMOUNT);

--B
SELECT product_id, SUM(AMOUNT) FROM sales GROUP BY product_id HAVING
SUM(AMOUNT) > (SELECT AVG(total_sales) FROM (SELECT SUM(AMOUNT) as
total_sales FROM sales GROUP BY product_id));

--C
SELECT product_id, SUM(AMOUNT) FROM sales WHERE SUM(AMOUNT) > (SELECT
AVG(AMOUNT) FROM sales) GROUP BY product_id;

--D
SELECT product_id, SUM(AMOUNT) FROM sales GROUP BY product_id WHERE
SUM(AMOUNT) > AVG(SUM(AMOUNT));

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
SELECT * FROM SALES;

--A
SELECT CATEGORY, PRODUCT_NAME, SUM(PRICE) AS total_sales
FROM PRODUCTS
GROUP BY CUBE(CATEGORY, PRODUCT_NAME);

--B
SELECT 
    Category,
    PRODUCT_NAME,
    SUM(price) AS total_sales
FROM products
GROUP BY ROLLUP(Category, PRODUCT_NAME);

--C
SELECT 
    Category,
    PRODUCT_NAME,
    SUM(price) AS total_sales
FROM products
GROUP BY GROUPING SETS (
    (Category, PRODUCT_NAME),   
    (Category),          
    (PRODUCT_NAME),                     
    ()                            
);

--D
SELECT 
    CATEGORY,
    PRODUCT_NAME,
    SUM(price) AS total_sales
FROM products
GROUP BY ALL CATEGORY, PRODUCT_NAME;

