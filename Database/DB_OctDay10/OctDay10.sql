-- 1. Create Electronics_Sales table
CREATE TABLE Electronics_Sales (
    customer_id INT,
    purchase_amount DECIMAL(10,2)
);

-- Insert 10 sample rows
INSERT INTO Electronics_Sales (customer_id, purchase_amount) VALUES
(1, 250.00),
(2, 150.00),
(3, 300.00),
(4, 450.00),
(5, 500.00),
(6, 120.00),
(7, 220.00),
(8, 330.00),
(9, 400.00),
(10, 180.00);

-- 2. Create Clothing_Sales table
CREATE TABLE Clothing_Sales (
    customer_id INT,
    purchase_amount DECIMAL(10,2)
);

-- Insert 10 sample rows
INSERT INTO Clothing_Sales (customer_id, purchase_amount) VALUES
(1, 100.00),
(2, 200.00),
(3, 150.00),
(4, 220.00),
(5, 180.00),
(6, 300.00),
(7, 250.00),
(8, 90.00),
(11, 120.00),
(12, 80.00);

-- 3. Create HomeGoods_Sales table
CREATE TABLE HomeGoods_Sales (
    customer_id INT,
    purchase_amount DECIMAL(10,2)
);

-- Insert 10 sample rows
INSERT INTO HomeGoods_Sales (customer_id, purchase_amount) VALUES
(1, 75.00),
(2, 60.00),
(3, 120.00),
(5, 200.00),
(6, 50.00),
(7, 90.00),
(13, 100.00),
(14, 110.00),
(8, 80.00),
(15, 130.00);

-- 4. Find customers who purchased in ALL three departments
SELECT customer_id
FROM Electronics_Sales
INTERSECT
SELECT customer_id
FROM Clothing_Sales
INTERSECT
SELECT customer_id
FROM HomeGoods_Sales;

SELECT customer_id FROM Electronics_Sales 
UNION 
SELECT customer_id FROM Clothing_Sales 
UNION 
SELECT customer_id FROM HomeGoods_Sales;

SELECT customer_id FROM Electronics_Sales 
INTERSECT 
SELECT customer_id FROM Clothing_Sales 
INTERSECT 
SELECT customer_id FROM HomeGoods_Sales;

SELECT customer_id FROM Electronics_Sales 
MINUS SELECT customer_id FROM Clothing_Sales 
MINUS SELECT customer_id FROM HomeGoods_Sales;

SELECT customer_id FROM Electronics_Sales 
UNION ALL SELECT customer_id FROM Clothing_Sales 
UNION ALL SELECT customer_id FROM HomeGoods_Sales ;

CREATE TABLE StoreA_Products (
  product_id NUMBER PRIMARY KEY
);

CREATE TABLE StoreB_Products (
  product_id NUMBER PRIMARY KEY
);

-- Insert Store A products (1–10)
INSERT INTO StoreA_Products VALUES (1);
INSERT INTO StoreA_Products VALUES (2);
INSERT INTO StoreA_Products VALUES (3);
INSERT INTO StoreA_Products VALUES (4);
INSERT INTO StoreA_Products VALUES (5);
INSERT INTO StoreA_Products VALUES (6);
INSERT INTO StoreA_Products VALUES (7);
INSERT INTO StoreA_Products VALUES (8);
INSERT INTO StoreA_Products VALUES (9);
INSERT INTO StoreA_Products VALUES (10);

-- Insert Store B products (5–16)
INSERT INTO StoreB_Products VALUES (5);
INSERT INTO StoreB_Products VALUES (6);
INSERT INTO StoreB_Products VALUES (7);
INSERT INTO StoreB_Products VALUES (8);
INSERT INTO StoreB_Products VALUES (9);
INSERT INTO StoreB_Products VALUES (10);
INSERT INTO StoreB_Products VALUES (11);
INSERT INTO StoreB_Products VALUES (12);
INSERT INTO StoreB_Products VALUES (13);
INSERT INTO StoreB_Products VALUES (14);
INSERT INTO StoreB_Products VALUES (15);
INSERT INTO StoreB_Products VALUES (16);

select * from StoreB_Products;

SELECT product_id FROM StoreA_Products
UNION
SELECT product_id FROM StoreB_Products;

CREATE TABLE All_Customers (
  customer_id NUMBER PRIMARY KEY,
  customer_name VARCHAR2(50)
);

CREATE TABLE Recent_Purchases (
  purchase_id NUMBER PRIMARY KEY,
  customer_id NUMBER
);

-- All customers
INSERT INTO All_Customers VALUES (1, 'Alice');
INSERT INTO All_Customers VALUES (2, 'Bob');
INSERT INTO All_Customers VALUES (3, 'Charlie');
INSERT INTO All_Customers VALUES (4, 'David');

-- Recent Purchases (Bob bought twice, Charlie once)
INSERT INTO Recent_Purchases VALUES (101, 2);
INSERT INTO Recent_Purchases VALUES (102, 2);
INSERT INTO Recent_Purchases VALUES (103, 3);

SELECT customer_id FROM All_Customers
INTERSECT
SELECT customer_id FROM Recent_Purchases;

SELECT customer_id FROM All_Customers
UNION
SELECT customer_id FROM Recent_Purchases;

SELECT customer_id FROM All_Customers
MINUS
SELECT DISTINCT customer_id FROM Recent_Purchases;

SELECT customer_id FROM All_Customers
UNION ALL
SELECT customer_id FROM Recent_Purchases;

CREATE TABLE EMPLOYEES (
  person_id NUMBER PRIMARY KEY,
  full_name VARCHAR2(50)
);

CREATE TABLE CONTRACTORS (
  person_id NUMBER PRIMARY KEY,
  full_name VARCHAR2(50)
);

CREATE TABLE INTERNS (
  person_id NUMBER PRIMARY KEY,
  full_name VARCHAR2(50)
);

INSERT INTO EMPLOYEES VALUES (1, 'Alice');
INSERT INTO EMPLOYEES VALUES (2, 'Bob');
INSERT INTO EMPLOYEES VALUES (3, 'Charlie');
INSERT INTO EMPLOYEES VALUES (4, 'David');
INSERT INTO EMPLOYEES VALUES (5, 'Eva');
INSERT INTO EMPLOYEES VALUES (6, 'Frank');
INSERT INTO EMPLOYEES VALUES (7, 'Grace');
INSERT INTO EMPLOYEES VALUES (8, 'Hannah');
INSERT INTO EMPLOYEES VALUES (9, 'Ian');
INSERT INTO EMPLOYEES VALUES (10, 'Jack');

INSERT INTO CONTRACTORS VALUES (3, 'Charlie');   -- common with EMPLOYEES & INTERNS
INSERT INTO CONTRACTORS VALUES (4, 'David');     -- common with EMPLOYEES
INSERT INTO CONTRACTORS VALUES (5, 'Eva');       -- common with EMPLOYEES & INTERNS
INSERT INTO CONTRACTORS VALUES (7, 'Grace');     -- common with EMPLOYEES
INSERT INTO CONTRACTORS VALUES (8, 'Hannah');    -- common with EMPLOYEES & INTERNS
INSERT INTO CONTRACTORS VALUES (11, 'Kevin');
INSERT INTO CONTRACTORS VALUES (12, 'Laura');
INSERT INTO CONTRACTORS VALUES (13, 'Michael');
INSERT INTO CONTRACTORS VALUES (14, 'Nancy');
INSERT INTO CONTRACTORS VALUES (15, 'Oscar');

select * from CONTRACTORS;

INSERT INTO INTERNS VALUES (3, 'Charlie');     -- common with all three
INSERT INTO INTERNS VALUES (5, 'Eva');         -- common with all three
INSERT INTO INTERNS VALUES (8, 'Hannah');      -- common with all three
INSERT INTO INTERNS VALUES (9, 'Ian');         -- common with EMPLOYEES only
INSERT INTO INTERNS VALUES (10, 'Jack');       -- common with EMPLOYEES only
INSERT INTO INTERNS VALUES (16, 'Paul');
INSERT INTO INTERNS VALUES (17, 'Quincy');
INSERT INTO INTERNS VALUES (18, 'Rachel');
INSERT INTO INTERNS VALUES (19, 'Steve');
INSERT INTO INTERNS VALUES (20, 'Tina');

COMMIT;

SELECT * FROM EMPLOYEES
UNION
SELECT * FROM CONTRACTORS
UNION
SELECT * FROM INTERNS;

SELECT * FROM EMPLOYEES
INTERSECT
SELECT * FROM CONTRACTORS
INTERSECT
SELECT * FROM INTERNS;

SELECT * FROM EMPLOYEES
MINUS
SELECT * FROM CONTRACTORS
MINUS
SELECT * FROM INTERNS;

SELECT * FROM EMPLOYEES
WHERE EXISTS (SELECT 1 FROM CONTRACTORS)
AND EXISTS (SELECT 1 FROM INTERNS);

DROP TABLE CUSTOMERS CASCADE CONSTRAINTS PURGE;

CREATE TABLE CUSTOMERS (
    customer_id NUMBER PRIMARY KEY,
    name VARCHAR2(50)
);

CREATE TABLE PURCHASES (
    purchase_id NUMBER PRIMARY KEY,
    customer_id NUMBER,
    purchase_date DATE
);

CREATE TABLE COMPLAINTS (
    complaint_id NUMBER PRIMARY KEY,
    customer_id NUMBER,
    complaint_date DATE
);
INSERT INTO CUSTOMERS VALUES (1, 'Alice');
INSERT INTO CUSTOMERS VALUES (2, 'Bob');
INSERT INTO CUSTOMERS VALUES (3, 'Charlie');
INSERT INTO CUSTOMERS VALUES (4, 'David');
INSERT INTO CUSTOMERS VALUES (5, 'Eva');
INSERT INTO CUSTOMERS VALUES (6, 'Frank');
INSERT INTO CUSTOMERS VALUES (7, 'Grace');
INSERT INTO CUSTOMERS VALUES (8, 'Hannah');
INSERT INTO CUSTOMERS VALUES (9, 'Ian');
INSERT INTO CUSTOMERS VALUES (10, 'Jack');

INSERT INTO PURCHASES VALUES (101, 1, DATE '2025-01-10'); -- Alice
INSERT INTO PURCHASES VALUES (102, 2, DATE '2025-02-15'); -- Bob
INSERT INTO PURCHASES VALUES (103, 3, DATE '2025-03-05'); -- Charlie
INSERT INTO PURCHASES VALUES (104, 4, DATE '2025-04-10'); -- David
INSERT INTO PURCHASES VALUES (105, 5, DATE '2025-05-12'); -- Eva
INSERT INTO PURCHASES VALUES (106, 6, DATE '2025-06-20'); -- Frank
INSERT INTO PURCHASES VALUES (107, 7, DATE '2025-07-25'); -- Grace
INSERT INTO PURCHASES VALUES (108, 8, DATE '2025-08-15'); -- Hannah
INSERT INTO PURCHASES VALUES (109, 9, DATE '2025-09-10'); -- Ian
INSERT INTO PURCHASES VALUES (110, 10, DATE '2025-10-05'); -- Jack

INSERT INTO COMPLAINTS VALUES (201, 2, DATE '2025-05-01'); -- Bob
INSERT INTO COMPLAINTS VALUES (202, 4, DATE '2025-06-01'); -- David
INSERT INTO COMPLAINTS VALUES (203, 5, DATE '2025-07-10'); -- Eva
INSERT INTO COMPLAINTS VALUES (204, 6, DATE '2025-08-05'); -- Frank
INSERT INTO COMPLAINTS VALUES (205, 7, DATE '2025-09-01'); -- Grace
INSERT INTO COMPLAINTS VALUES (206, 8, DATE '2025-09-20'); -- Hannah
INSERT INTO COMPLAINTS VALUES (207, 9, DATE '2025-10-01'); -- Ian
INSERT INTO COMPLAINTS VALUES (208, 10, DATE '2025-10-10'); -- Jack

SELECT c.customer_id, c.name FROM CUSTOMERS c 
WHERE c.customer_id IN (SELECT customer_id FROM PURCHASES)
AND c.customer_id NOT IN (SELECT customer_id FROM COMPLAINTS);

SELECT c.customer_id, c.name FROM CUSTOMERS c 
INNER JOIN PURCHASES p ON c.customer_id = p.customer_id
MINUS
SELECT c.customer_id, c.name FROM CUSTOMERS c 
INNER JOIN COMPLAINTS co ON c.customer_id = co.customer_id;

SELECT c.customer_id, c.name FROM CUSTOMERS c 
INNER JOIN PURCHASES p ON c.customer_id = p.customer_id
INTERSECT
SELECT c.customer_id, c.name FROM CUSTOMERS c 
LEFT JOIN COMPLAINTS co ON c.customer_id = co.customer_id 
WHERE co.customer_id IS NULL;

SELECT c.customer_id, c.name FROM CUSTOMERS c 
WHERE EXISTS (SELECT 1 FROM PURCHASES p WHERE p.customer_id = c.customer_id)
UNION ALL
SELECT c.customer_id, c.name FROM CUSTOMERS c 
WHERE NOT EXISTS (SELECT 1 FROM COMPLAINTS co WHERE co.customer_id = c.customer_id);

-- Current employees
CREATE TABLE CURRENT_EMPLOYEES (
    employee_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    department VARCHAR2(50)
);

-- Former employees
CREATE TABLE FORMER_EMPLOYEES (
    employee_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    department VARCHAR2(50)
);

-- Retired employees
CREATE TABLE RETIRED_EMPLOYEES (
    employee_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    department VARCHAR2(50)
);

INSERT INTO CURRENT_EMPLOYEES VALUES (1, 'Alice', 'IT');
INSERT INTO CURRENT_EMPLOYEES VALUES (2, 'Bob', 'HR');
INSERT INTO CURRENT_EMPLOYEES VALUES (3, 'Charlie', 'Finance');
INSERT INTO CURRENT_EMPLOYEES VALUES (4, 'David', 'IT');
INSERT INTO CURRENT_EMPLOYEES VALUES (5, 'Eva', 'Marketing');
INSERT INTO CURRENT_EMPLOYEES VALUES (6, 'Frank', 'HR');
INSERT INTO CURRENT_EMPLOYEES VALUES (7, 'Grace', 'Finance');
INSERT INTO CURRENT_EMPLOYEES VALUES (8, 'Hannah', 'IT');
INSERT INTO CURRENT_EMPLOYEES VALUES (9, 'Ian', 'Marketing');
INSERT INTO CURRENT_EMPLOYEES VALUES (10, 'Jack', 'Finance');

INSERT INTO FORMER_EMPLOYEES VALUES (3, 'Charlie', 'Finance');
INSERT INTO FORMER_EMPLOYEES VALUES (5, 'Eva', 'Marketing');
INSERT INTO FORMER_EMPLOYEES VALUES (11, 'Karen', 'IT');
INSERT INTO FORMER_EMPLOYEES VALUES (12, 'Leo', 'HR');
INSERT INTO FORMER_EMPLOYEES VALUES (13, 'Mia', 'Finance');
INSERT INTO FORMER_EMPLOYEES VALUES (14, 'Nina', 'Marketing');
INSERT INTO FORMER_EMPLOYEES VALUES (15, 'Oscar', 'IT');
INSERT INTO FORMER_EMPLOYEES VALUES (16, 'Paul', 'HR');
INSERT INTO FORMER_EMPLOYEES VALUES (17, 'Quinn', 'Finance');
INSERT INTO FORMER_EMPLOYEES VALUES (18, 'Rita', 'Marketing');

INSERT INTO RETIRED_EMPLOYEES VALUES (5, 'Eva', 'Marketing');
INSERT INTO RETIRED_EMPLOYEES VALUES (12, 'Leo', 'HR');
INSERT INTO RETIRED_EMPLOYEES VALUES (19, 'Steve', 'IT');
INSERT INTO RETIRED_EMPLOYEES VALUES (20, 'Tina', 'Finance');
INSERT INTO RETIRED_EMPLOYEES VALUES (21, 'Uma', 'Marketing');
INSERT INTO RETIRED_EMPLOYEES VALUES (22, 'Victor', 'IT');
INSERT INTO RETIRED_EMPLOYEES VALUES (23, 'Wendy', 'HR');
INSERT INTO RETIRED_EMPLOYEES VALUES (24, 'Xander', 'Finance');
INSERT INTO RETIRED_EMPLOYEES VALUES (25, 'Yara', 'Marketing');
INSERT INTO RETIRED_EMPLOYEES VALUES (26, 'Zane', 'IT');

SELECT * FROM CURRENT_EMPLOYEES
UNION
SELECT * FROM FORMER_EMPLOYEES
UNION
SELECT * FROM RETIRED_EMPLOYEES;

SELECT * FROM CURRENT_EMPLOYEES
UNION ALL
SELECT * FROM FORMER_EMPLOYEES
UNION ALL
SELECT * FROM RETIRED_EMPLOYEES;

SELECT * FROM CURRENT_EMPLOYEES
INTERSECT
SELECT * FROM FORMER_EMPLOYEES
INTERSECT
SELECT * FROM RETIRED_EMPLOYEES;

SELECT * FROM CURRENT_EMPLOYEES
MINUS
SELECT * FROM FORMER_EMPLOYEES
MINUS
SELECT * FROM RETIRED_EMPLOYEES;

