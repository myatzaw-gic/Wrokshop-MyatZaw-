CREATE TABLE EMPLOYEES (
    employee_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR2(50) NOT NULL,
    salary NUMBER(10,2),
    dept_id NUMBER,
    commission_pct NUMBER(3,2),
    email VARCHAR2(100) UNIQUE,
    hire_date DATE
);

CREATE TABLE ORDERS (
    order_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    customer_id NUMBER NOT NULL,
    order_date DATE,
    total_amount NUMBER(10,2)
);

CREATE TABLE PRODUCTS (
    product_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    price NUMBER(10,2) NOT NULL
);

CREATE TABLE TEMP_PRODUCTS (
    product_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    price NUMBER(10,2) NOT NULL
);

CREATE TABLE CUSTOMERS (
    customer_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) UNIQUE
);

INSERT INTO EMPLOYEES (name, salary, dept_id, commission_pct, email, hire_date) VALUES ('John Smith', 50000, 10, 0.10, 'john.smith@example.com', DATE '2023-01-15');
INSERT INTO EMPLOYEES (name, salary, dept_id, commission_pct, email, hire_date) VALUES ('Alice Johnson', 60000, 20, 0.15, 'alice.johnson@example.com', DATE '2022-03-20');
INSERT INTO EMPLOYEES (name, salary, dept_id, commission_pct, email, hire_date) VALUES ('Bob Williams', 55000, 10, 0.05, 'bob.williams@example.com', DATE '2021-07-10');
INSERT INTO EMPLOYEES (name, salary, dept_id, commission_pct, email, hire_date) VALUES ('Carol Davis', 70000, 30, 0.12, 'carol.davis@example.com', DATE '2020-11-05');
INSERT INTO EMPLOYEES (name, salary, dept_id, commission_pct, email, hire_date) VALUES ('David Brown', 48000, 20, 0.08, 'david.brown@example.com', DATE '2023-02-01');
INSERT INTO EMPLOYEES (name, salary, dept_id, commission_pct, email, hire_date) VALUES ('Emma Wilson', 52000, 10, 0.10, 'emma.wilson@example.com', DATE '2022-12-15');
INSERT INTO EMPLOYEES (name, salary, dept_id, commission_pct, email, hire_date) VALUES ('Frank Miller', 65000, 30, 0.20, 'frank.miller@example.com', DATE '2021-05-30');
INSERT INTO EMPLOYEES (name, salary, dept_id, commission_pct, email, hire_date) VALUES ('Grace Lee', 53000, 20, 0.05, 'grace.lee@example.com', DATE '2020-08-22');
INSERT INTO EMPLOYEES (name, salary, dept_id, commission_pct, email, hire_date) VALUES ('Henry Clark', 50000, 10, 0.10, 'henry.clark@example.com', DATE '2023-04-01');
INSERT INTO EMPLOYEES (name, salary, dept_id, commission_pct, email, hire_date) VALUES ('Ivy Martinez', 60000, 30, 0.12, 'ivy.martinez@example.com', DATE '2022-06-10');

INSERT INTO CUSTOMERS (first_name, last_name, email) VALUES ('John', 'Doe', 'john.doe@example.com');
INSERT INTO CUSTOMERS (first_name, last_name, email) VALUES ('Alice', 'Smith', 'alice.smith@example.com');
INSERT INTO CUSTOMERS (first_name, last_name, email) VALUES ('Bob', 'Brown', 'bob.brown@example.com');
INSERT INTO CUSTOMERS (first_name, last_name, email) VALUES ('Carol', 'Davis', 'carol.davis@example.com');
INSERT INTO CUSTOMERS (first_name, last_name, email) VALUES ('David', 'Wilson', 'david.wilson@example.com');
INSERT INTO CUSTOMERS (first_name, last_name, email) VALUES ('Emma', 'Lee', 'emma.lee@example.com');
INSERT INTO CUSTOMERS (first_name, last_name, email) VALUES ('Frank', 'Clark', 'frank.clark@example.com');
INSERT INTO CUSTOMERS (first_name, last_name, email) VALUES ('Grace', 'Martinez', 'grace.martinez@example.com');
INSERT INTO CUSTOMERS (first_name, last_name, email) VALUES ('Henry', 'Johnson', 'henry.johnson@example.com');
INSERT INTO CUSTOMERS (first_name, last_name, email) VALUES ('Ivy', 'Williams', 'ivy.williams@example.com');


INSERT INTO ORDERS (customer_id, order_date, total_amount) VALUES (1, DATE '2023-01-10', 250.50);
INSERT INTO ORDERS (customer_id, order_date, total_amount) VALUES (2, DATE '2023-02-15', 300.00);
INSERT INTO ORDERS (customer_id, order_date, total_amount) VALUES (3, DATE '2022-12-20', 150.75);
INSERT INTO ORDERS (customer_id, order_date, total_amount) VALUES (4, DATE '2023-03-05', 400.00);
INSERT INTO ORDERS (customer_id, order_date, total_amount) VALUES (5, DATE '2022-11-10', 125.25);
INSERT INTO ORDERS (customer_id, order_date, total_amount) VALUES (6, DATE '2023-01-25', 350.50);
INSERT INTO ORDERS (customer_id, order_date, total_amount) VALUES (7, DATE '2023-04-01', 275.00);
INSERT INTO ORDERS (customer_id, order_date, total_amount) VALUES (8, DATE '2022-10-15', 500.75);
INSERT INTO ORDERS (customer_id, order_date, total_amount) VALUES (9, DATE '2023-02-20', 600.00);
INSERT INTO ORDERS (customer_id, order_date, total_amount) VALUES (10, DATE '2023-03-18', 450.25);

INSERT INTO PRODUCTS (name, price) VALUES ('Laptop', 1200.00);
INSERT INTO PRODUCTS (name, price) VALUES ('Mouse', 25.50);
INSERT INTO PRODUCTS (name, price) VALUES ('Keyboard', 45.00);
INSERT INTO PRODUCTS (name, price) VALUES ('Monitor', 250.00);
INSERT INTO PRODUCTS (name, price) VALUES ('Printer', 150.75);
INSERT INTO PRODUCTS (name, price) VALUES ('Desk', 200.00);
INSERT INTO PRODUCTS (name, price) VALUES ('Chair', 100.00);
INSERT INTO PRODUCTS (name, price) VALUES ('USB Drive', 20.00);
INSERT INTO PRODUCTS (name, price) VALUES ('Webcam', 75.00);
INSERT INTO PRODUCTS (name, price) VALUES ('Headset', 60.50);

INSERT INTO TEMP_PRODUCTS (name, price) VALUES ('Tablet', 300.00);
INSERT INTO TEMP_PRODUCTS (name, price) VALUES ('Smartphone', 800.00);
INSERT INTO TEMP_PRODUCTS (name, price) VALUES ('Smartwatch', 200.00);
INSERT INTO TEMP_PRODUCTS (name, price) VALUES ('Router', 100.00);
INSERT INTO TEMP_PRODUCTS (name, price) VALUES ('Keyboard', 40.00);
INSERT INTO TEMP_PRODUCTS (name, price) VALUES ('Mouse', 20.00);
INSERT INTO TEMP_PRODUCTS (name, price) VALUES ('Monitor', 230.00);
INSERT INTO TEMP_PRODUCTS (name, price) VALUES ('Laptop Bag', 50.00);
INSERT INTO TEMP_PRODUCTS (name, price) VALUES ('Docking Station', 150.00);
INSERT INTO TEMP_PRODUCTS (name, price) VALUES ('Headset', 55.00);
COMMIT;

----------Q1----------
SELECT * FROM EMPLOYEES;

--A
INSERT INTO EMPLOYEES (name, salary, dept_id) VALUES ('John Smith', 50000, 10);

--B
INSERT EMPLOYEES SET name = 'John Smith', salary = 50000, dept_id = 10;

--C
INSERT INTO EMPLOYEES VALUES ('John Smith', 50000, 10);

--D
INSERT ('John Smith', 50000, 10) INTO EMPLOYEES;

----------Q2----------
SELECT * FROM ORDERS;

--A
DELETE FROM ORDERS WHERE order_date < SYSDATE - 1825;

--B
DELETE ORDERS WHERE order_date < ADD_MONTHS(SYSDATE, -60);

--C
DELETE FROM ORDERS WHERE MONTHS_BETWEEN(SYSDATE, order_date) > 60;

--D
DELETE * FROM ORDERS WHERE order_date < SYSDATE - INTERVAL '5' YEAR;

----------Q3----------
SELECT * from PRODUCTS;
SELECT * FROM TEMP_PRODUCTS;

--A
INSERT INTO PRODUCTS SELECT * FROM TEMP_PRODUCTS;

--B
INSERT PRODUCTS SELECT product_id, name, price FROM TEMP_PRODUCTS;

--C
INSERT INTO PRODUCTS (product_id, name, price) VALUES (SELECT * FROM
TEMP_PRODUCTS);

--D
INSERT INTO PRODUCTS VALUES (SELECT product_id, name, price FROM
TEMP_PRODUCTS);

----------Q4----------
SELECT * FROM EMPLOYEES;

--A
UPDATE EMPLOYEES SET commission_pct = 0.2 WHERE salary < AVG(salary);

--B
UPDATE EMPLOYEES SET commission_pct = 0.2 WHERE salary < (SELECT
AVG(salary) FROM EMPLOYEES);

--C
UPDATE EMPLOYEES SET commission_pct = 0.2 WHERE salary < AVG(SELECT
salary FROM EMPLOYEES);

--D
UPDATE (SELECT * FROM EMPLOYEES WHERE salary < AVG(salary)) SET
commission_pct = 0.2;

----------Q5----------
SELECT * FROM CUSTOMERS;

--A
DELETE FROM CUSTOMERS WHERE customer_id NOT IN (SELECT
MIN(customer_id) FROM CUSTOMERS GROUP BY first_name, last_name);

--B
DELETE CUSTOMERS WHERE customer_id != MIN(customer_id) GROUP BY
first_name, last_name;  

--C
DELETE FROM CUSTOMERS c1 WHERE EXISTS (SELECT 1 FROM CUSTOMERS
c2 WHERE c2.first_name = c1.first_name AND c2.last_name = c1.last_name
AND c2.customer_id < c1.customer_id);

--D
DELETE FROM CUSTOMERS WHERE ROWID NOT IN (SELECT MIN(ROWID)
FROM CUSTOMERS GROUP BY first_name, last_name);

----------Q6----------
SELECT * FROM ORDERS;

--A
UPDATE ORDERS SET total_amount = total_amount * 1.05 WHERE
customer_id = 1001;

--B
UPDATE ORDERS SET total_amount = total_amount + (total_amount * 0.05)
WHERE customer_id = 1001;

--C
UPDATE ORDERS SET total_amount = total_amount + 5% WHERE
customer_id = 1001;

--D
UPDATE ORDERS SET total_amount = total_amount * 105% WHERE
customer_id = 1001;

----------Q7----------
SELECT * from EMPLOYEES;

--A
INSERT INTO EMPLOYEES (name, email, hire_date)
SELECT 'Thu Thu', 'thuthu@example.com', SYSDATE
FROM DUAL
WHERE NOT EXISTS (
    SELECT 1 FROM EMPLOYEES WHERE email = 'thuthu@example.com'
);

--B
INSERT INTO EMPLOYEES ( name, email, hire_date)
VALUES ( 'John Doe', 'john.doe@example.com', SYSDATE)
WHERE NOT EXISTS (SELECT 1 FROM EMPLOYEES WHERE email = 'john.doe@example.com');

--C
INSERT INTO EMPLOYEES (name, email, hire_date)
VALUES ('John Doe', 'john.doe@example.com', SYSDATE)
ON DUPLICATE KEY UPDATE employee_id = employee_id;

--D
MERGE INTO EMPLOYEES e 
USING (SELECT 'Ag Ag' AS name, 'aung@example.com' AS email, SYSDATE AS hire_date FROM DUAL) s 
ON (e.email = s.email) 
WHEN NOT MATCHED THEN INSERT (name, email, hire_date) 
VALUES (s.name, s.email, s.hire_date);

----------Q8----------
COMMIT;
SELECT * FROM ORDERS;
SELECT * FROM CUSTOMERS;

--A
DELETE FROM ORDERS
WHERE customer_id NOT IN (SELECT customer_id FROM CUSTOMERS);

--B
DELETE FROM ORDERS o
WHERE NOT EXISTS (
    SELECT 1 FROM CUSTOMERS c
    WHERE c.customer_id = o.customer_id
);

--C
DELETE ORDERS
FROM ORDERS
LEFT JOIN CUSTOMERS ON ORDERS.customer_id = CUSTOMERS.customer_id
WHERE CUSTOMERS.customer_id IS NULL;

--D
DELETE FROM ORDERS
WHERE customer_id = ANY (
    SELECT customer_id FROM CUSTOMERS WHERE customer_id IS NULL
);


