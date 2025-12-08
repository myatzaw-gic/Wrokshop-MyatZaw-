
-----------Q1-----------
SELECT * FROM EMPLOYEES;

--A
ALTER TABLE EMPLOYEES ADD salary NUMBER(8,2);

--B
--SQL does not use CREATE COLUMN.
ALTER TABLE EMPLOYEES CREATE COLUMN salary NUMBER(8,2);

--C
--MODIFY is used when the column already exists and you want to change its datatype or constraints.
ALTER TABLE EMPLOYEES MODIFY salary NUMBER(8,2);

--D
--SQL does not use INSERT COLUMN.
ALTER TABLE EMPLOYEES INSERT COLUMN salary NUMBER(8,2);

-----------Q2-----------
SELECT * FROM EMPLOYEES;

--A
CREATE VIEW emp_view1 AS SELECT name, hire_date 
FROM EMPLOYEES;

--B
CREATE VIEW emp_view2 (name, hire_date) AS EMPLOYEES;

--C
CREATE VIEW emp_view3 AS EMPLOYEES (name, hire_date);

--D
CREATE VIEW emp_view4 SELECT name, hire_date FROM EMPLOYEES;

SELECT * FROM emp_view;

-----------Q3-----------
--Index is instead of scanning every page, Oracle goes directly to where the data is stored.
--Indexes improve query performance, but they also add some overhead during INSERT, UPDATE, DELETE.

SELECT * FROM EMPLOYEES;

SELECT index_name, table_name, uniqueness
FROM user_indexes
WHERE table_name = 'EMPLOYEES';

--A
CREATE INDEX idx_emp_name1 ON EMPLOYEES (name);

--B
CREATE INDEX idx_emp_name2 FOR EMPLOYEES.name;

--C
ALTER TABLE EMPLOYEES ADD INDEX idx_emp_name3 (name);

--D
INDEX CREATE idx_emp_name4 ON EMPLOYEES (name);


-----------Q4-----------
SELECT * FROM EMPLOYEES;

--A
ALTER TABLE EMPLOYEES DROP COLUMN salary;

--B
ALTER TABLE EMPLOYEES REMOVE salary;

--C
DROP COLUMN salary FROM EMPLOYEES;

--D
DELETE COLUMN salary FROM EMPLOYEES;

-----------Q5-----------

--A
CREATE TABLE PRODUCTS (
  product_id   NUMBER PRIMARY KEY,
  product_name VARCHAR2(100),
  price        NUMBER(10,2)
);

--B
CREATE TABLE PRODUCTS (
  product_id   NUMBER,
  product_name VARCHAR2(100),
  price        NUMBER(10,2),
  PRIMARY KEY product_id
);

--C
CREATE TABLE PRODUCTS (
  product_id   NUMBER,
  product_name VARCHAR2(100),
  price        NUMBER(10,2),
  CONSTRAINT pk_product PRIMARY KEY (product_id)
);

--D
CREATE TABLE PRODUCTS (
  product_id   NUMBER,
  product_name VARCHAR2(100),
  price        NUMBER(10,2)
);

ALTER TABLE PRODUCTS
  ADD PRIMARY KEY (product_id);

-----------Q6-----------

--A
ALTER TABLE PRODUCTS MODIFY price NUMBER(12,2);

--B
ALTER TABLE PRODUCTS CHANGE COLUMN price NUMBER(12,2);

--C
UPDATE PRODUCTS SET price = CAST(price AS NUMBER(12,2));

--D
ALTER TABLE PRODUCTS ALTER COLUMN price TYPE NUMBER(12,2);

-----------Q7-----------

--A
CREATE VIEW product_sales AS
SELECT product_id, SUM(amount) AS total_sales
FROM SALES
GROUP BY product_id;

--B
CREATE VIEW product_sales2 AS
SELECT product_id, amount AS total_sales FROM SALES;

--C
CREATE VIEW product_sales3 (product_id, total_sales) AS
SELECT * FROM SALES;

--D
CREATE VIEW product_sales4 AS
SELECT DISTINCT product_id, amount AS total_sales FROM SALES;

-----------Q8-----------

--A
DROP TABLE PRODUCTS CASCADE CONSTRAINTS;

--B
DROP TABLE clearance INCLUDING CONTENTS;

--C
DELETE TABLE clearance AND DEPENDENCIES;

--D
REMOVE TABLE Clearance CASCADE;
