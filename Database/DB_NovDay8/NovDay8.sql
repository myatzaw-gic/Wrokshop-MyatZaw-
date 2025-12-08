
----------Q1----------
SELECT * FROM orders;
SELECT * FROM customers;
--A
ALTER TABLE orders 
ADD CONSTRAINT fk_customer 
FOREIGN KEY (customer_id) 
REFERENCES customers(customer_id);

--B
ALTER TABLE orders 
ADD FOREIGN KEY (customer_id) 
REFERENCES customers(customer_id);

--C
CREATE FOREIGN KEY ON orders (customer_id) 
REFERENCES customers(id);

--D
ALTER TABLE orders 
ADD CONSTRAINT fk_customer 
FOREIGN KEY customer_id 
REFERENCES customers;

-----------Q2-----------

--A
CREATE TABLE employees (
  id NUMBER,
  email VARCHAR2(100) CONSTRAINT nn_email NOT NULL
);

--B
CREATE TABLE employees (
  id NUMBER,
  email VARCHAR2(100) NOT NULL
);

--C
CREATE TABLE employees (
  id NUMBER,
  email VARCHAR2(100),
  CONSTRAINT nn_email NOT NULL (email)
);

--D
CREATE TABLE employees (
  id NUMBER,
  email VARCHAR2(100) NOT ALLOW NULL
);

-----------Q3-----------

--A
ALTER TABLE employees 
ADD CONSTRAINT chk_age 
CHECK (age BETWEEN 18 AND 65);

--B
ALTER TABLE employees 
ADD CHECK (age >= 18 AND age <= 65);

--C
ALTER TABLE employees 
ADD CONSTRAINT chk_age 
CHECK age BETWEEN 18 AND 65;

--D
ALTER TABLE employees 
MODIFY age CHECK (BETWEEN 18 AND 65);

-----------Q4-----------

--A
ALTER TABLE users 
ADD CONSTRAINT uk_email 
UNIQUE (email);

--B
ALTER TABLE users 
MODIFY email UNIQUE;

--C
ALTER TABLE users 
ADD CONSTRAINT pk_email 
PRIMARY KEY (email);

--D
ALTER TABLE users 
ADD DISTINCT (email);

-----------Q5-----------

--A
ALTER TABLE customers ADD CONSTRAINT chk_status CHECK (status IN
('Active', 'Inactive', 'Suspended'));

--B
ALTER TABLE customers MODIFY status ENUM('Active', 'Inactive',
'Suspended');

--C
ALTER TABLE customers ADD CONSTRAINT chk_status VALUES ('Active',
'Inactive', 'Suspended');

--D
ALTER TABLE customers ADD CHECK status ('Active', 'Inactive', 'Suspended');

-----------Q6-----------

--A
CREATE TABLE products (
    product_code VARCHAR2(10) UNIQUE NOT NULL,
    name VARCHAR2(100),
    price NUMBER(10,2)
);

--B
CREATE TABLE products (
    product_code VARCHAR2(10) PRIMARY KEY,
    name VARCHAR2(100),
    price NUMBER(10,2)
);

--C
CREATE TABLE products (
    product_code VARCHAR2(10),
    name VARCHAR2(100),
    price NUMBER(10,2),
    CONSTRAINT pk_product PRIMARY KEY (product_code),
    CONSTRAINT uk_product UNIQUE (product_code)
);

--D
CREATE TABLE products (
    product_code VARCHAR2(10) NOT NULL,
    name VARCHAR2(100),
    price NUMBER(10,2),
    UNIQUE (product_code)
);

-----------Q7-----------

--A
CREATE TABLE customers (
    customer_id NUMBER,
    email VARCHAR2(100),
    name VARCHAR2(50),
    PRIMARY KEY (customer_id),
    UNIQUE (email)
);

--B
CREATE TABLE customers (
    customer_id NUMBER PRIMARY KEY,
    email VARCHAR2(100) UNIQUE NOT NULL,
    name VARCHAR2(50) NOT NULL
);

--C
CREATE TABLE customers (
    customer_id NUMBER,
    email VARCHAR2(100),
    name VARCHAR2(50),
    CONSTRAINT pk_customer PRIMARY KEY (customer_id)
);

--D
CREATE TABLE customers (
    customer_id NUMBER,
    email VARCHAR2(100),
    name VARCHAR2(50),
    PRIMARY KEY (customer_id),
    CONSTRAINT uq_email UNIQUE (email)
);

-----------Q8-----------

--A
CREATE TABLE books (
    book_id NUMBER PRIMARY KEY,
    title VARCHAR2(100) NOT NULL
);

CREATE TABLE authors (
    author_id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL
);

CREATE TABLE book_authors (
    book_id NUMBER,
    author_id NUMBER,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

--B
CREATE TABLE books (
    book_id NUMBER PRIMARY KEY,
    title VARCHAR2(100) NOT NULL,
    author_id NUMBER,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

CREATE TABLE authors (
    author_id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL
);

--C
CREATE TABLE books (
    book_id NUMBER PRIMARY KEY,
    title VARCHAR2(100) NOT NULL
);

CREATE TABLE authors (
    author_id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    book_id NUMBER,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

--D
CREATE TABLE books (
    book_id NUMBER PRIMARY KEY,
    title VARCHAR2(100) NOT NULL
);

CREATE TABLE authors (
    author_id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL
);

CREATE TABLE book_authors (
    book_id NUMBER REFERENCES books(book_id),
    author_id NUMBER REFERENCES authors(author_id)
);

