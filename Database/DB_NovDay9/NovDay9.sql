
------------Q1----------------

--A
SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY HH24:MI:SS') FROM DUAL;

--B
SELECT TO_CHAR(SYSDATE, 'DD-MM-YYYY HH:MI:SS') FROM DUAL;

--C
SELECT TO_DATE(SYSDATE, 'DD-MON-YYYY HH24:MI:SS') FROM DUAL;

--D
SELECT TO_CHAR(SYSDATE, 'DD-MON-YY HH24:MI:SS') FROM DUAL;

-----------Q2----------------
SELECT * FROM products;

--A
SELECT SUBSTR(name, -4) FROM products;

--B
SELECT RIGHT(name, 4) FROM products;

--C
SELECT SUBSTRING(name, -4) FROM products;

--D
SELECT LAST(name, 4) FROM products;

-----------Q3----------------

--A
SELECT * FROM employees WHERE name LIKE 'A%n';

--B
SELECT * FROM employees WHERE name LIKE 'A*n';

--C
SELECT * FROM employees WHERE name LIKE 'A_n';

--D
SELECT * FROM employees WHERE name LIKE '%A%n%';

-----------Q4----------------

--A
SELECT TO_CHAR(sale_date, 'MONTH') AS month, SUM(amount) AS
total_sales FROM sales WHERE EXTRACT(YEAR FROM sale_date) =
EXTRACT(YEAR FROM SYSDATE) GROUP BY TO_CHAR(sale_date, 'MONTH');

--B
SELECT MONTH(sale_date) AS month, SUM(amount) AS total_sales FROM
sales WHERE YEAR(sale_date) = YEAR(SYSDATE) GROUP BY
MONTH(sale_date);

--C
SELECT TO_CHAR(sale_date, 'MM') AS month, SUM(amount) AS total_sales
FROM sales WHERE TO_CHAR(sale_date, 'YYYY') = TO_CHAR(SYSDATE,
'YYYY') GROUP BY TO_CHAR(sale_date, 'MM');

--D
SELECT MONTHNAME(sale_date) AS month, SUM(amount) AS total_sales
FROM sales WHERE YEAR(sale_date) = YEAR(CURRENT_DATE) GROUP BY
MONTHNAME(sale_date);

-----------Q5----------------
SELECT * FROM orders;

--A
SELECT customer_id, MAX(order_date) AS latest_order FROM orders GROUP
BY customer_id;

--B
SELECT o.* FROM orders o WHERE o.order_date = (SELECT MAX(order_date)
FROM orders WHERE customer_id = o.customer_id);

--C
SELECT o.* FROM orders o JOIN (SELECT customer_id, MAX(order_date) AS
max_date FROM orders GROUP BY customer_id) m ON o.customer_id =
m.customer_id AND o.order_date = m.max_date;

--D
SELECT DISTINCT ON (customer_id) * FROM orders ORDER BY customer_id,
order_date DESC;

-----------Q6-----------
SELECT * FROM PRODUCTS;
--A
SELECT SUBSTR(NAME, -4) FROM PRODUCTS WHERE
LENGTH(NAME) = 6;

--B
SELECT SUBSTR(NAME, 7, 4) FROM PRODUCTS WHERE
LENGTH(NAME) = 6;

--C
SELECT CASE WHEN LENGTH(NAME) = 6 THEN
SUBSTR(NAME, -4) END FROM PRODUCTS;

--D
SELECT DECODE(LENGTH(NAME), 6, SUBSTR(NAME,
-4)) FROM PRODUCTS;

-----------Q7-----------

--A
SELECT FLOOR(MONTHS_BETWEEN(SYSDATE, HIRE_DATE) / 12) FROM
EMPLOYEES;

--B
SELECT TRUNC((SYSDATE - HIRE_DATE) / 365) FROM EMPLOYEES;

--C
SELECT ROUND(MONTHS_BETWEEN(SYSDATE, HIRE_DATE) / 12) FROM
EMPLOYEES;

--D
SELECT EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM HIRE_DATE)
FROM EMPLOYEES;

-----------Q8-----------
SELECT * FROM PRODUCTS;

--A
SELECT NAME, DECODE(PRICE, <100, 'Budget', <500, 'Mid-range',
'Premium') AS CATEGORY FROM PRODUCTS;

--B
SELECT NAME, CASE WHEN PRICE < 100 THEN 'Budget' WHEN
PRICE < 500 THEN 'Mid-range' ELSE 'Premium' END AS CATEGORY FROM
PRODUCTS;

--C
SELECT NAME, NVL2(PRICE < 100, 'Budget', NVL2(PRICE < 500,
'Mid-range', 'Premium')) AS CATEGORY FROM PRODUCTS;

--D
SELECT NAME, GREATEST('Budget', 'Mid-range', 'Premium') AS CATEGORY
FROM PRODUCTS WHERE PRICE BETWEEN 0 AND 500;