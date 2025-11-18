---------Q1---------
SELECT * FROM EMPLOYEES;

SELECT e.employee_id, e.salary
FROM employees e
WHERE e.salary > (SELECT AVG(salary) FROM employees);

SELECT e.employee_id, e.salary
FROM employees e
WHERE e.salary >= (
  SELECT AVG(salary)
  FROM employees
  WHERE department_id = e.department_id
);

SELECT e.employee_id, e.salary
FROM employees e
JOIN (
  SELECT department_id, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department_id
) d ON e.department_id = d.department_id
WHERE e.salary >= d.avg_salary;

SELECT e.employee_id, e.salary
FROM employees e
WHERE e.salary > AVG(salary)
GROUP BY department_id;

----------Q2---------
SELECT employee_id, (SELECT MAX(salary) FROM employees) AS max_salary
FROM employees;

SELECT employee_id, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT e.employee_id,
       (SELECT AVG(salary) FROM employees WHERE department_id = e.department_id) AS dept_avg
FROM employees e;
SELECT d.dept_id, d.avg_salary
FROM (SELECT department_id AS dept_id, AVG(salary) AS avg_salary
      FROM employees
      GROUP BY department_id) d;
SELECT employee_id, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

