SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;

--------Q1---------
SELECT e.FIRST_NAME, d.department_name
FROM employees e INNER JOIN departments d 
ON e.department_id = d.department_id;

SELECT e.FIRST_NAME, d.department_name 
FROM employees e LEFT JOIN departments d 
ON e.department_id = d.department_id;

SELECT e.FIRST_NAME, d.department_name 
FROM employees e RIGHT JOIN departments d 
ON e.department_id = d.department_id;

SELECT e.FIRST_NAME, d.department_name 
FROM employees e FULL OUTER JOIN departments d 
ON e.department_id = d.department_id;

--------Q2---------
SELECT * FROM CUSTOMERS;
SELECT * FROM ORDERS;
COMMIT;

SELECT c.customer_name, o.order_id
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

SELECT c.customer_name, o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

SELECT c.customer_name, o.order_id
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;

SELECT c.customer_name, o.order_id
FROM orders o
FULL OUTER JOIN customers c
ON o.customer_id = c.customer_id;

--------Q3---------
SELECT * FROM BOOKS;
SELECT * FROM LOANS;

SELECT b.title, l.BORROWER_ID
FROM books b
INNER JOIN loans l
ON b.book_id = l.book_id;

SELECT b.title, l.BORROWER_ID
FROM books b
LEFT JOIN loans l
ON b.book_id = l.book_id;

SELECT b.title, l.BORROWER_ID
FROM loans l
RIGHT JOIN books b
ON l.book_id = b.book_id;

SELECT b.title, l.BORROWER_ID
FROM books b
FULL OUTER JOIN loans l
ON b.book_id = l.book_id;

--------Q4---------
SELECT * FROM PRODUCTS;
SELECT * FROM SALES;

SELECT p.product_name, s.sale_date, s.SALE_ID
FROM products p
INNER JOIN sales s
ON p.product_id = s.product_id;

SELECT p.product_name, s.sale_date, s.SALE_ID
FROM products p
LEFT JOIN sales s
ON p.product_id = s.product_id;

SELECT p.product_name, s.sale_date, s.SALE_ID
FROM sales s
RIGHT JOIN products p
ON s.product_id = p.product_id;

SELECT p.product_name, s.sale_date, s.SALE_ID
FROM products p
FULL OUTER JOIN sales s
ON p.product_id = s.product_id;

--------Q5---------
SELECT * FROM EMPLOYEES;
SELECT * FROM PROJECTS;
SELECT * FROM ASSIGNMENTS;

SELECT p.project_name, e.FIRST_NAME
FROM projects p
INNER JOIN assignments a ON p.project_id = a.project_id
INNER JOIN employees e ON a.employee_id = e.employee_id;

SELECT p.project_name, e.FIRST_NAME
FROM projects p
LEFT JOIN assignments a ON p.project_id = a.project_id
LEFT JOIN employees e ON a.employee_id = e.employee_id;

SELECT p.project_name, e.FIRST_NAME
FROM employees e
RIGHT JOIN assignments a ON e.employee_id = a.employee_id
RIGHT JOIN projects p ON a.project_id = p.project_id;

SELECT p.project_name, e.FIRST_NAME
FROM projects p
FULL OUTER JOIN assignments a ON p.project_id = a.project_id
FULL OUTER JOIN employees e ON a.employee_id = e.employee_id;

--------Q6---------
SELECT * FROM CUSTOMERS;
SELECT * FROM TICKETS;

SELECT t.ticket_id, c.customer_name
FROM tickets t
INNER JOIN customers c ON t.customer_id = c.customer_id;

SELECT t.ticket_id, c.customer_name
FROM tickets t
LEFT JOIN customers c ON t.customer_id = c.customer_id;

SELECT t.ticket_id, c.customer_name
FROM customers c
RIGHT JOIN tickets t ON c.customer_id = t.customer_id;

SELECT t.ticket_id, c.customer_name
FROM tickets t
FULL OUTER JOIN customers c ON t.customer_id = c.customer_id;

--------Q7---------
SELECT * FROM courses;
SELECT * FROM students;
SELECT * FROM enrollments;

SELECT c.course_name, s.student_name
FROM courses c
INNER JOIN enrollments e ON c.course_id = e.course_id
INNER JOIN students s ON e.student_id = s.student_id;

SELECT c.course_name, s.student_name
FROM courses c
LEFT JOIN enrollments e ON c.course_id = e.course_id
LEFT JOIN students s ON e.student_id = s.student_id;

SELECT c.course_name, s.student_name
FROM students s
RIGHT JOIN enrollments e ON s.student_id = e.student_id
RIGHT JOIN courses c ON e.course_id = c.course_id;

SELECT c.course_name, s.student_name
FROM courses c
FULL OUTER JOIN enrollments e ON c.course_id = e.course_id
FULL OUTER JOIN students s ON e.student_id = s.student_id;

--------Q8---------
SELECT * FROM PRODUCTS;
SELECT * FROM SUPPLIERS;
SELECT * FROM PRODUCT_SUPPLIERS;

SELECT p.product_name, s.supplier_name
FROM products p
INNER JOIN product_suppliers ps ON p.product_id = ps.product_id
INNER JOIN suppliers s ON ps.supplier_id = s.supplier_id;

SELECT p.product_name, s.supplier_name
FROM products p
LEFT JOIN product_suppliers ps ON p.product_id = ps.product_id
LEFT JOIN suppliers s ON ps.supplier_id = s.supplier_id;

SELECT p.product_name, s.supplier_name
FROM suppliers s
RIGHT JOIN product_suppliers ps ON s.supplier_id = ps.supplier_id
RIGHT JOIN products p ON ps.product_id = p.product_id;

SELECT p.product_name, s.supplier_name
FROM products p
FULL OUTER JOIN product_suppliers ps ON p.product_id = ps.product_id
FULL OUTER JOIN suppliers s ON ps.supplier_id = s.supplier_id;