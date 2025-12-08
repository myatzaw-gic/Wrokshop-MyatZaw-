-- Table for Department A
CREATE TABLE dept_a (
  employee_id   NUMBER PRIMARY KEY,
  employee_name VARCHAR2(100)
);

-- Table for Department B
CREATE TABLE dept_b (
  employee_id   NUMBER PRIMARY KEY,
  employee_name VARCHAR2(100)
);

INSERT INTO dept_a VALUES (1, 'Aung');
INSERT INTO dept_a VALUES (2, 'Su');
INSERT INTO dept_a VALUES (3, 'Mya');

INSERT INTO dept_b VALUES (2, 'Su');      -- Duplicate name (Su)
INSERT INTO dept_b VALUES (4, 'Hla');
INSERT INTO dept_b VALUES (5, 'Aung');    -- Duplicate name (Aung)

-- Table for Electronics category
CREATE TABLE electronics (
  product_id   NUMBER PRIMARY KEY,
  product_name VARCHAR2(150)
);

-- Table for Accessories category
CREATE TABLE accessories (
  product_id   NUMBER PRIMARY KEY,
  product_name VARCHAR2(150)
);  

-- Electronics products
INSERT INTO electronics VALUES (100, 'Headphones');
INSERT INTO electronics VALUES (101, 'Smartphone');
INSERT INTO electronics VALUES (102, 'Laptop');
INSERT INTO electronics VALUES (103, 'Smartwatch');
INSERT INTO electronics VALUES (104, 'Camera');

-- Accessories products
INSERT INTO accessories VALUES (100, 'Headphones');   -- common product
INSERT INTO accessories VALUES (105, 'Phone Case');
INSERT INTO accessories VALUES (106, 'Charger');
INSERT INTO accessories VALUES (103, 'Smartwatch');   -- common product
INSERT INTO accessories VALUES (107, 'Laptop Bag');

-- Sales table for North region
CREATE TABLE sales_north (
    sale_id    NUMBER PRIMARY KEY,
    product_id NUMBER,
    amount     NUMBER,
    sale_date  DATE
);

-- Sales table for South region
CREATE TABLE sales_south (
    sale_id    NUMBER PRIMARY KEY,
    product_id NUMBER,
    amount     NUMBER,
    sale_date  DATE
);

-- Sales table for West region
CREATE TABLE sales_west (
    sale_id    NUMBER PRIMARY KEY,
    product_id NUMBER,
    amount     NUMBER,
    sale_date  DATE
);

-- Sales North
INSERT INTO sales_north VALUES (1, 101, 150, DATE '2025-11-01');
INSERT INTO sales_north VALUES (2, 102, 200, DATE '2025-11-02');
INSERT INTO sales_north VALUES (3, 103, 250, DATE '2025-11-03');

-- Sales South
INSERT INTO sales_south VALUES (4, 104, 300, DATE '2025-11-01');
INSERT INTO sales_south VALUES (5, 102, 200, DATE '2025-11-02'); -- duplicate-like row
INSERT INTO sales_south VALUES (6, 105, 350, DATE '2025-11-04');

-- Sales West
INSERT INTO sales_west VALUES (7, 101, 150, DATE '2025-11-01');  -- duplicate-like row
INSERT INTO sales_west VALUES (8, 106, 400, DATE '2025-11-05');
INSERT INTO sales_west VALUES (9, 107, 450, DATE '2025-11-06');

-- Clearance products table
CREATE TABLE clearance (
    product_id   NUMBER PRIMARY KEY,
    product_name VARCHAR2(100)
);

-- Discontinued products table
CREATE TABLE discontinued (
    product_id   NUMBER PRIMARY KEY,
    product_name VARCHAR2(100)
);

-- Clearance products
INSERT INTO clearance VALUES (101, 'Laptop');
INSERT INTO clearance VALUES (102, 'Smartphone');
INSERT INTO clearance VALUES (103, 'Headphones');
INSERT INTO clearance VALUES (104, 'Camera');
INSERT INTO clearance VALUES (105, 'Smartwatch');

-- Discontinued products
INSERT INTO discontinued VALUES (103, 'Headphones');  -- common product
INSERT INTO discontinued VALUES (105, 'Smartwatch');  -- common product
INSERT INTO discontinued VALUES (106, 'Old Tablet');
INSERT INTO discontinued VALUES (107, 'MP3 Player');
INSERT INTO discontinued VALUES (108, 'Old Camera');

-- Company Cars table
CREATE TABLE company_cars (
    emp_id   NUMBER PRIMARY KEY,
    emp_name VARCHAR2(100)
);

-- Parking Spots table
CREATE TABLE parking_spots (
    emp_id   NUMBER PRIMARY KEY,
    emp_name VARCHAR2(100)
);

-- Employees with company cars
INSERT INTO company_cars VALUES (1, 'Alice');
INSERT INTO company_cars VALUES (2, 'Bob');
INSERT INTO company_cars VALUES (3, 'Charlie');
INSERT INTO company_cars VALUES (4, 'David');
INSERT INTO company_cars VALUES (5, 'Eve');

-- Employees with parking spots
INSERT INTO parking_spots VALUES (4, 'David');  -- has both car and parking
INSERT INTO parking_spots VALUES (5, 'Eve');    -- has both car and parking
INSERT INTO parking_spots VALUES (6, 'Frank');
INSERT INTO parking_spots VALUES (7, 'Grace');
INSERT INTO parking_spots VALUES (8, 'Hannah');

-- Electronics sales table
CREATE TABLE electronics_sales (
    sale_id     NUMBER PRIMARY KEY,
    customer_id NUMBER,
    sale_date   DATE
);

-- Book sales table
CREATE TABLE book_sales (
    sale_id     NUMBER PRIMARY KEY,
    customer_id NUMBER,
    sale_date   DATE
);

-- Clothing sales table
CREATE TABLE clothing_sales (
    sale_id     NUMBER PRIMARY KEY,
    customer_id NUMBER,
    sale_date   DATE
);

-- Electronics sales
INSERT INTO electronics_sales VALUES (1, 101, DATE '2025-11-01');
INSERT INTO electronics_sales VALUES (2, 102, DATE '2025-11-02');
INSERT INTO electronics_sales VALUES (3, 103, DATE '2025-11-03');
INSERT INTO electronics_sales VALUES (4, 104, DATE '2025-11-04');
INSERT INTO electronics_sales VALUES (5, 105, DATE '2025-11-05');

-- Book sales
INSERT INTO book_sales VALUES (1, 101, DATE '2025-11-06');
INSERT INTO book_sales VALUES (2, 103, DATE '2025-11-07');
INSERT INTO book_sales VALUES (3, 104, DATE '2025-11-08');
INSERT INTO book_sales VALUES (4, 106, DATE '2025-11-09');
INSERT INTO book_sales VALUES (5, 107, DATE '2025-11-10');

-- Clothing sales
INSERT INTO clothing_sales VALUES (1, 101, DATE '2025-11-11');
INSERT INTO clothing_sales VALUES (2, 102, DATE '2025-11-12');
INSERT INTO clothing_sales VALUES (3, 103, DATE '2025-11-13');
INSERT INTO clothing_sales VALUES (4, 104, DATE '2025-11-14');
INSERT INTO clothing_sales VALUES (5, 108, DATE '2025-11-15');

-- In Stock Products table
CREATE TABLE in_stock (
    product_id   NUMBER PRIMARY KEY,
    product_name VARCHAR2(100)
);

-- On Order Products table
CREATE TABLE on_order (
    product_id   NUMBER PRIMARY KEY,
    product_name VARCHAR2(100)
);

-- In Stock Products
INSERT INTO in_stock VALUES (101, 'Laptop');
INSERT INTO in_stock VALUES (102, 'Smartphone');
INSERT INTO in_stock VALUES (103, 'Headphones');
INSERT INTO in_stock VALUES (104, 'Camera');
INSERT INTO in_stock VALUES (105, 'Smartwatch');

-- On Order Products
INSERT INTO on_order VALUES (103, 'Headphones'); -- common product
INSERT INTO on_order VALUES (105, 'Smartwatch'); -- common product
INSERT INTO on_order VALUES (106, 'Tablet');
INSERT INTO on_order VALUES (107, 'Monitor');
INSERT INTO on_order VALUES (108, 'Keyboard');

COMMIT;

--------------Q1----------------
SELECT * FROM dept_a;
SELECT * FROM dept_b;

--A
SELECT employee_name FROM dept_a UNION ALL SELECT employee_name
FROM dept_b;

--B
SELECT employee_name FROM dept_a UNION SELECT employee_name FROM
dept_b;

--C
SELECT employee_name FROM dept_a INTERSECT SELECT employee_name
FROM dept_b;

--D
SELECT employee_name FROM dept_a MINUS SELECT employee_name FROM
dept_b;

--------------Q2----------------
SELECT * FROM electronics;
SELECT * FROM accessories;

--A
SELECT product_id FROM electronics UNION SELECT product_id FROM
accessories;

--B
SELECT product_id FROM electronics INTERSECT SELECT product_id FROM
accessories;

--C
SELECT product_id FROM electronics MINUS SELECT product_id FROM
accessories;

--D
SELECT product_id FROM electronics UNION ALL SELECT product_id FROM
accessories;

--------------Q3----------------
CREATE TABLE returns (
    return_id   NUMBER PRIMARY KEY,
    customer_id NUMBER NOT NULL,
    return_date DATE
);

INSERT INTO returns VALUES (1, 2, DATE '2025-11-12'); 
INSERT INTO returns VALUES (2, 4, DATE '2025-11-13');  
INSERT INTO returns VALUES (3, 6, DATE '2025-11-14');  
INSERT INTO returns VALUES (4, 8, DATE '2025-11-15');  
INSERT INTO returns VALUES (5, 10, DATE '2025-11-16'); 
COMMIT;

SELECT * FROM ORDERS;
SELECT * FROM returns;

--A
SELECT customer_id FROM orders
INTERSECT
SELECT customer_id FROM returns;

--B
SELECT customer_id FROM orders
UNION
SELECT customer_id FROM returns;

--C
SELECT customer_id FROM orders
MINUS
SELECT customer_id FROM returns;

--D
SELECT customer_id FROM orders
UNION ALL
SELECT customer_id FROM returns;

--------------Q4----------------
SELECT * FROM sales_north;
SELECT * FROM sales_south;
SELECT * FROM sales_west;

--A
SELECT * FROM sales_north
UNION
SELECT * FROM sales_south
UNION
SELECT * FROM sales_west;

--B
SELECT * FROM sales_north
INTERSECT
SELECT * FROM sales_south
INTERSECT
SELECT * FROM sales_west;

--C
SELECT * FROM sales_north
UNION ALL
SELECT * FROM sales_south
UNION ALL
SELECT * FROM sales_west;

--D
SELECT * FROM sales_north
MINUS
SELECT * FROM sales_south
MINUS
SELECT * FROM sales_west;

--------------Q5----------------
SELECT * FROM clearance;
SELECT * FROM discontinued;

--A
SELECT product_id FROM clearance
UNION
SELECT product_id FROM discontinued;

--B
SELECT product_id FROM clearance
INTERSECT
SELECT product_id FROM discontinued;

--C
SELECT product_id FROM clearance
MINUS
SELECT product_id FROM discontinued;

--D
SELECT product_id FROM clearance
UNION ALL
SELECT product_id FROM discontinued;

--------------Q6----------------
SELECT * FROM company_cars;
SELECT * FROM parking_spots;

--A
(SELECT emp_id FROM company_cars 
 UNION 
 SELECT emp_id FROM parking_spots)
MINUS
(SELECT emp_id FROM company_cars 
 INTERSECT 
 SELECT emp_id FROM parking_spots);

--B
(SELECT emp_id FROM company_cars INTERSECT SELECT emp_id FROM parking_spots)
UNION
(SELECT emp_id FROM company_cars MINUS SELECT emp_id FROM parking_spots);

--C
(SELECT emp_id FROM company_cars MINUS SELECT emp_id FROM parking_spots)
UNION
(SELECT emp_id FROM parking_spots MINUS SELECT emp_id FROM company_cars);

--D
(SELECT emp_id FROM company_cars UNION ALL SELECT emp_id FROM parking_spots)
MINUS
(SELECT emp_id FROM company_cars INTERSECT SELECT emp_id FROM parking_spots);

--------------Q7----------------
SELECT * FROM electronics_sales;
SELECT * FROM book_sales;
SELECT * FROM clothing_sales;

--A
SELECT customer_id FROM electronics_sales
UNION
SELECT customer_id FROM book_sales
UNION
SELECT customer_id FROM clothing_sales;

--B
SELECT customer_id FROM electronics_sales
INTERSECT
SELECT customer_id FROM book_sales
INTERSECT
SELECT customer_id FROM clothing_sales;

--C
SELECT customer_id FROM electronics_sales
MINUS
SELECT customer_id FROM book_sales
MINUS
SELECT customer_id FROM clothing_sales;

--D
SELECT customer_id FROM electronics_sales
UNION ALL
SELECT customer_id FROM book_sales
UNION ALL
SELECT customer_id FROM clothing_sales;

--------------Q8----------------
SELECT * FROM in_stock;
SELECT * FROM on_order;

--A
SELECT product_id FROM in_stock
UNION
SELECT product_id FROM on_order;

--B
SELECT product_id FROM in_stock
INTERSECT
SELECT product_id FROM on_order;

--C
(SELECT product_id FROM in_stock MINUS SELECT product_id FROM on_order)
UNION
(SELECT product_id FROM on_order MINUS SELECT product_id FROM in_stock);

--D
SELECT product_id FROM in_stock
UNION ALL
SELECT product_id FROM on_order;