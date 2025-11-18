CREATE TABLE EMPLOYEES (
    EMPLOYEE_ID NUMBER PRIMARY KEY,
    FIRST_NAME VARCHAR2(50),
    LAST_NAME VARCHAR2(50),
    DEPARTMENT_ID NUMBER
);
CREATE TABLE DEPARTMENTS (
    DEPARTMENT_ID NUMBER PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR2(100)
);
INSERT INTO EMPLOYEES VALUES (101, 'John', 'Doe', 1);
INSERT INTO EMPLOYEES VALUES (102, 'Mary', 'Smith', 2);
INSERT INTO EMPLOYEES VALUES (103, 'Robert', 'Brown', 1);
INSERT INTO EMPLOYEES VALUES (104, 'Lisa', 'White', 3);
INSERT INTO EMPLOYEES VALUES (105, 'David', 'Clark', 2);
INSERT INTO EMPLOYEES VALUES (106, 'Karen', 'Jones', 1);
INSERT INTO EMPLOYEES VALUES (107, 'Paul', 'Green', 4);
INSERT INTO EMPLOYEES VALUES (108, 'Nancy', 'Adams', 3);
INSERT INTO EMPLOYEES VALUES (109, 'Tom', 'Lee', 4);
INSERT INTO EMPLOYEES VALUES (110, 'Emily', 'Davis', 2);

INSERT INTO DEPARTMENTS VALUES (1, 'IT');
INSERT INTO DEPARTMENTS VALUES (2, 'HR');
INSERT INTO DEPARTMENTS VALUES (3, 'Finance');
INSERT INTO DEPARTMENTS VALUES (4, 'Sales');
INSERT INTO DEPARTMENTS VALUES (5, 'Marketing');
INSERT INTO DEPARTMENTS VALUES (6, 'Legal');
INSERT INTO DEPARTMENTS VALUES (7, 'Operations');
INSERT INTO DEPARTMENTS VALUES (8, 'Support');
INSERT INTO DEPARTMENTS VALUES (9, 'Admin');
INSERT INTO DEPARTMENTS VALUES (10, 'Research');

CREATE VIEW emp_dept_view AS 
SELECT e.first_name, e.last_name, d.department_name 
FROM employees e, departments d;

CREATE VIEW EMP_DEP As Select E.FIRST_NAME, E.LAST_NAME, D.DEPARTMENT_NAME
From EMPLOYEES E INNER Join DEPARTMENTS D 
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;
select * from EMP_DEP; 
 
CREATE VIEW emp_dept_view AS 
SELECT first_name, last_name, department_name 
FROM employees, departments;

CREATE VIEW emp_dept_view (first_name, last_name, department_name) AS 
SELECT * FROM employees, departments;

SELECT * FROM EMPLOYEES;

SELECT * FROM emp_dept_view;

CREATE TABLE sales (
    sale_id NUMBER PRIMARY KEY,
    customer_id NUMBER,
    product_id NUMBER,
    amount NUMBER(10,2),
    sale_date DATE
);

CREATE TABLE customers (
    customer_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(50)
);

CREATE TABLE products (
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(50),
    category VARCHAR2(30)
);
INSERT INTO products VALUES (101, 'Laptop', 'Electronics');
INSERT INTO products VALUES (102, 'Mouse', 'Electronics');
INSERT INTO products VALUES (103, 'Keyboard', 'Electronics');
INSERT INTO products VALUES (104, 'Monitor', 'Electronics');
INSERT INTO products VALUES (105, 'Desk', 'Furniture');
INSERT INTO products VALUES (106, 'Chair', 'Furniture');
INSERT INTO products VALUES (107, 'Lamp', 'Lighting');
INSERT INTO products VALUES (108, 'Headphones', 'Electronics');
INSERT INTO products VALUES (109, 'Phone', 'Electronics');
INSERT INTO products VALUES (110, 'Tablet', 'Electronics');

INSERT INTO sales VALUES (1, 1, 101, 1200.00, TO_DATE('2025-01-10','YYYY-MM-DD'));
INSERT INTO sales VALUES (2, 2, 102, 25.00, TO_DATE('2025-01-11','YYYY-MM-DD'));
INSERT INTO sales VALUES (3, 3, 103, 45.00, TO_DATE('2025-01-12','YYYY-MM-DD'));
INSERT INTO sales VALUES (4, 4, 104, 200.00, TO_DATE('2025-01-13','YYYY-MM-DD'));
INSERT INTO sales VALUES (5, 5, 105, 300.00, TO_DATE('2025-01-14','YYYY-MM-DD'));
INSERT INTO sales VALUES (6, 6, 106, 150.00, TO_DATE('2025-01-15','YYYY-MM-DD'));
INSERT INTO sales VALUES (7, 7, 107, 75.00, TO_DATE('2025-01-16','YYYY-MM-DD'));
INSERT INTO sales VALUES (8, 8, 108, 95.00, TO_DATE('2025-01-17','YYYY-MM-DD'));
INSERT INTO sales VALUES (9, 9, 109, 800.00, TO_DATE('2025-01-18','YYYY-MM-DD'));
INSERT INTO sales VALUES (10, 10, 110, 650.00, TO_DATE('2025-01-19','YYYY-MM-DD'));

select * from customers;

CREATE OR REPLACE VIEW sales_summary AS
SELECT c.customer_name,
       p.product_name,
       SUM(s.amount) AS total_sales
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p ON s.product_id = p.product_id
GROUP BY c.customer_name, p.product_name;

SELECT * FROM sales_summary;    

CREATE TABLE orders (
    order_id NUMBER PRIMARY KEY,
    customer_id NUMBER,
    order_total NUMBER(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders VALUES (101, 1, 1200.50, TO_DATE('2025-01-10','YYYY-MM-DD'));
INSERT INTO orders VALUES (102, 2, 850.00, TO_DATE('2025-01-12','YYYY-MM-DD'));
INSERT INTO orders VALUES (103, 3, 450.00, TO_DATE('2025-01-15','YYYY-MM-DD'));
INSERT INTO orders VALUES (104, 4, 300.00, TO_DATE('2025-01-18','YYYY-MM-DD'));
INSERT INTO orders VALUES (105, 5, 1500.00, TO_DATE('2025-01-20','YYYY-MM-DD'));
INSERT INTO orders VALUES (106, 6, 700.00, TO_DATE('2025-01-22','YYYY-MM-DD'));
INSERT INTO orders VALUES (107, 7, 400.00, TO_DATE('2025-01-25','YYYY-MM-DD'));
INSERT INTO orders VALUES (108, 8, 950.00, TO_DATE('2025-01-27','YYYY-MM-DD'));
INSERT INTO orders VALUES (109, 9, 500.00, TO_DATE('2025-01-28','YYYY-MM-DD'));
INSERT INTO orders VALUES (110, 10, 1300.00, TO_DATE('2025-01-30','YYYY-MM-DD'));
INSERT INTO orders VALUES (111, 1, 700.00, TO_DATE('2025-02-02','YYYY-MM-DD'));
INSERT INTO orders VALUES (112, 2, 250.00, TO_DATE('2025-02-05','YYYY-MM-DD'));
INSERT INTO orders VALUES (113, 3, 600.00, TO_DATE('2025-02-07','YYYY-MM-DD'));
INSERT INTO orders VALUES (114, 4, 900.00, TO_DATE('2025-02-10','YYYY-MM-DD'));
INSERT INTO orders VALUES (115, 5, 400.00, TO_DATE('2025-02-12','YYYY-MM-DD'));
INSERT INTO orders VALUES (116, 6, 850.00, TO_DATE('2025-02-15','YYYY-MM-DD'));
INSERT INTO orders VALUES (117, 7, 950.00, TO_DATE('2025-02-17','YYYY-MM-DD'));
INSERT INTO orders VALUES (118, 8, 300.00, TO_DATE('2025-02-20','YYYY-MM-DD'));
INSERT INTO orders VALUES (119, 9, 600.00, TO_DATE('2025-02-22','YYYY-MM-DD'));
INSERT INTO orders VALUES (120, 10, 500.00, TO_DATE('2025-02-25','YYYY-MM-DD'));


CREATE VIEW top_10_customers AS
SELECT customer_id,
SUM(order_total) AS total_value
FROM orders
GROUP BY customer_id
ORDER BY total_value DESC
FETCH FIRST 10 ROWS ONLY;
SELECT * FROM top_10_customers;

select * from EMPLOYEES;
select * from DEPARTMENTS;
ALTER TABLE EMPLOYEES ADD (salary NUMBER(10,2));
UPDATE EMPLOYEES SET salary = 50000 WHERE EMPLOYEE_ID IN (101, 103, 106);
UPDATE EMPLOYEES SET salary = 60000 WHERE EMPLOYEE_ID IN (102, 105, 110);
UPDATE EMPLOYEES SET salary = 70000 WHERE EMPLOYEE_ID IN (104, 108);
UPDATE EMPLOYEES SET salary = 55000 WHERE EMPLOYEE_ID IN (107, 109);

CREATE OR REPLACE VIEW emp_dept_secure AS
SELECT 
       e.employee_id,
       e.first_name,
       e.last_name,
       d.department_name,
       DECODE( e.first_name, d.department_name, e.salary, NULL) AS salary
FROM   employees e
JOIN   departments d 
       ON e.department_id = d.department_id;
select * from emp_dept_secure;

select * from orders;

CREATE TABLE order_items (
    item_id     NUMBER PRIMARY KEY,
    order_id    NUMBER,
    product_id  NUMBER,
    quantity    NUMBER,
    unit_price  NUMBER(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO order_items VALUES (1, 101, 201, 2, 50);
INSERT INTO order_items VALUES (2, 101, 202, 1, 100);
INSERT INTO order_items VALUES (3, 102, 203, 5, 20);
INSERT INTO order_items VALUES (4, 103, 201, 3, 50);
INSERT INTO order_items VALUES (5, 104, 204, 2, 150);
INSERT INTO order_items VALUES (6, 105, 205, 1, 200);
INSERT INTO order_items VALUES (7, 106, 202, 4, 100);
INSERT INTO order_items VALUES (8, 107, 203, 2, 20);
INSERT INTO order_items VALUES (9, 108, 201, 1, 50);
INSERT INTO order_items VALUES (10, 109, 204, 3, 150);


select * from order_items;

CREATE OR REPLACE VIEW order_summary AS
SELECT 
       o.order_id,
       o.customer_id,
       o.order_date,
       SUM(oi.quantity * oi.unit_price) AS total_amount
FROM   orders o
JOIN   order_items oi 
       ON o.order_id = oi.order_id
GROUP BY o.order_id, o.customer_id, o.order_date;
SELECT * FROM order_summary;

-- Drop tables if they already exist (optional cleanup)
DROP TABLE employees CASCADE CONSTRAINTS;
DROP TABLE products CASCADE CONSTRAINTS;
DROP TABLE categories CASCADE CONSTRAINTS;

-- Create CATEGORIES table
CREATE TABLE categories (
    category_id NUMBER PRIMARY KEY,
    category_name VARCHAR2(50)
);

-- Create PRODUCTS table
CREATE TABLE products (
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(100),
    category_id NUMBER REFERENCES categories(category_id)
);

-- Create SALES table
CREATE TABLE sales (
    sale_id NUMBER PRIMARY KEY,
    product_id NUMBER REFERENCES products(product_id),
    sale_date DATE,
    amount NUMBER(10,2)
);

-- Insert categories
INSERT INTO categories VALUES (1, 'Electronics');
INSERT INTO categories VALUES (2, 'Clothing');
INSERT INTO categories VALUES (3, 'Furniture');

-- Insert products
INSERT INTO products VALUES (101, 'Laptop', 1);
INSERT INTO products VALUES (102, 'Smartphone', 1);
INSERT INTO products VALUES (201, 'T-Shirt', 2);
INSERT INTO products VALUES (202, 'Jeans', 2);
INSERT INTO products VALUES (301, 'Sofa', 3);
INSERT INTO products VALUES (302, 'Table', 3);

-- Insert sales (some within last quarter, some older)
INSERT INTO sales VALUES (1, 101, ADD_MONTHS(TRUNC(SYSDATE, 'Q'), -2) + 10, 1200);
INSERT INTO sales VALUES (2, 102, ADD_MONTHS(TRUNC(SYSDATE, 'Q'), -2) + 15, 800);
INSERT INTO sales VALUES (3, 201, ADD_MONTHS(TRUNC(SYSDATE, 'Q'), -1) + 5, 300);
INSERT INTO sales VALUES (4, 202, ADD_MONTHS(TRUNC(SYSDATE, 'Q'), -1) + 10, 200);
INSERT INTO sales VALUES (5, 301, ADD_MONTHS(TRUNC(SYSDATE, 'Q'), -1) + 20, 1500);
INSERT INTO sales VALUES (6, 302, ADD_MONTHS(TRUNC(SYSDATE, 'Q'), -4), 700); -- old sale (excluded)
COMMIT;

CREATE OR REPLACE VIEW category_sales AS
SELECT 
    c.category_name,
    SUM(s.amount) AS total_sales,
    ROUND(SUM(s.amount) / SUM(SUM(s.amount)) OVER () * 100, 2) AS sales_percentage
FROM sales s
JOIN products p ON s.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
WHERE s.sale_date >= ADD_MONTHS(TRUNC(SYSDATE, 'Q'), -3)
GROUP BY c.category_name;  
SELECT * FROM category_sales;

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name  VARCHAR2(50),
    last_name   VARCHAR2(50),
    email       VARCHAR2(100),
    hire_date   DATE,
    status      VARCHAR2(10)
);

SELECT * FROM EMPLOYEES;

INSERT INTO employees VALUES (101, 'John',   'Smith',    'john.smith@company.com',   DATE '2020-05-10', 'ACTIVE');
INSERT INTO employees VALUES (102, 'Emily',  'Brown',    'emily.brown@company.com',  DATE '2019-11-20', 'INACTIVE');
INSERT INTO employees VALUES (103, 'David',  'Lee',      'david.lee@company.com',    DATE '2021-03-15', 'ACTIVE');
INSERT INTO employees VALUES (104, 'Sophia', 'Johnson',  'sophia.johnson@company.com',DATE '2022-08-05', 'ACTIVE');
INSERT INTO employees VALUES (105, 'Michael','White',    'michael.white@company.com', DATE '2018-12-01', 'INACTIVE');
INSERT INTO employees VALUES (106, 'Olivia', 'Martinez', 'olivia.martinez@company.com',DATE '2023-01-10', 'ACTIVE');
INSERT INTO employees VALUES (107, 'Liam',   'Davis',    'liam.davis@company.com',   DATE '2020-07-22', 'INACTIVE');
INSERT INTO employees VALUES (108, 'Ava',    'Taylor',   'ava.taylor@company.com',   DATE '2024-04-12', 'ACTIVE');
INSERT INTO employees VALUES (109, 'Noah',   'Clark',    'noah.clark@company.com',   DATE '2022-10-09', 'ACTIVE');
INSERT INTO employees VALUES (110, 'Isabella','Moore',   'isabella.moore@company.com',DATE '2023-09-14', 'INACTIVE');

COMMIT;

CREATE OR REPLACE VIEW active_employees AS
SELECT 
    employee_id,
    first_name || ' ' || last_name AS full_name,
    email,
    hire_date
FROM employees
WHERE status = 'ACTIVE'
WITH READ ONLY;
SELECT * FROM active_employees;

    CREATE MATERIALIZED VIEW top_customers AS
    SELECT * FROM (
    SELECT c.category_name, cu.customer_name, SUM(o.total_amount) AS
    total_purchases,
    ROW_NUMBER() OVER (PARTITION BY c.category_name ORDER BY
    SUM(o.total_amount) DESC) AS rn
    FROM orders o
    JOIN products p ON o.product_id = p.product_id
    JOIN categories c ON p.category_id = c.category_id
    JOIN customers cu ON o.customer_id = cu.customer_id
    GROUP BY c.category_name, cu.customer_name
    )
    WHERE rn <= 5;
