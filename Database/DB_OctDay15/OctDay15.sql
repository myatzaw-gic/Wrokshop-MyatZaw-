CREATE TABLE EQUIPMENT (
    equipment_id NUMBER PRIMARY KEY,
    equipment_name VARCHAR2(50),
    next_maintenance DATE
);

INSERT INTO EQUIPMENT (equipment_id, equipment_name, next_maintenance) VALUES (1, 'Air Conditioner', TO_DATE('2025-11-10', 'YYYY-MM-DD'));
INSERT INTO EQUIPMENT (equipment_id, equipment_name, next_maintenance) VALUES (2, 'Generator', TO_DATE('2025-11-15', 'YYYY-MM-DD'));
INSERT INTO EQUIPMENT (equipment_id, equipment_name, next_maintenance) VALUES (3, 'Boiler', TO_DATE('2025-11-05', 'YYYY-MM-DD'));
INSERT INTO EQUIPMENT (equipment_id, equipment_name, next_maintenance) VALUES (4, 'Elevator', TO_DATE('2025-12-01', 'YYYY-MM-DD'));
INSERT INTO EQUIPMENT (equipment_id, equipment_name, next_maintenance) VALUES (5, 'Cooling Tower', TO_DATE('2025-11-20', 'YYYY-MM-DD'));
INSERT INTO EQUIPMENT (equipment_id, equipment_name, next_maintenance) VALUES (6, 'Pump', TO_DATE('2025-11-08', 'YYYY-MM-DD'));
INSERT INTO EQUIPMENT (equipment_id, equipment_name, next_maintenance) VALUES (7, 'Chiller', TO_DATE('2025-11-25', 'YYYY-MM-DD'));
INSERT INTO EQUIPMENT (equipment_id, equipment_name, next_maintenance) VALUES (8, 'HVAC Unit', TO_DATE('2025-11-18', 'YYYY-MM-DD'));
INSERT INTO EQUIPMENT (equipment_id, equipment_name, next_maintenance) VALUES (9, 'Fire Alarm System', TO_DATE('2025-11-12', 'YYYY-MM-DD'));
INSERT INTO EQUIPMENT (equipment_id, equipment_name, next_maintenance) VALUES (10, 'Water Tank', TO_DATE('2025-11-22', 'YYYY-MM-DD'));

SELECT * FROM EQUIPMENT;

SELECT equipment_id, next_maintenance - CURRENT_DATE AS days_until_maintenance 
FROM equipment;

SELECT equipment_id, next_maintenance - CURRENT_DATE AS days_until_maintenance 
FROM equipment 
WHERE next_maintenance > CURRENT_DATE;

SELECT equipment_id, (next_maintenance - CURRENT_DATE) DAY TO SECOND AS days_until_maintenance 
FROM equipment;

SELECT equipment_id, (next_maintenance - CURRENT_DATE) DAY AS days_until_maintenance 
FROM equipment 
WHERE next_maintenance > CURRENT_DATE;

SELECT employee_id, hire_date 
FROM employees 
WHERE hire_date < ADD_MONTHS(CURRENT_DATE, -66);

SELECT employee_id, hire_date 
FROM employees 
WHERE CURRENT_DATE - hire_date > INTERVAL '5-6' YEAR TO MONTH;

SELECT employee_id, hire_date 
FROM employees 
WHERE MONTHS_BETWEEN(CURRENT_DATE, hire_date) > 66;

SELECT employee_id, hire_date 
FROM employees 
WHERE hire_date < CURRENT_DATE - INTERVAL '5' YEAR - INTERVAL '6' MONTH;

SELECT TRUNC(CURRENT_TIMESTAMP, 'HH') AS shift_start,
       TRUNC(CURRENT_TIMESTAMP, 'HH') + INTERVAL '4' HOUR AS shift_end
FROM DUAL;

SELECT TRUNC(LOCALTIMESTAMP, 'HH') AS shift_start,
       TRUNC(LOCALTIMESTAMP, 'HH') + INTERVAL '4' HOUR AS shift_end
FROM DUAL;

SELECT TRUNC(SYSTIMESTAMP, 'HH') AS shift_start,
       TRUNC(SYSTIMESTAMP, 'HH') + INTERVAL '4' HOUR AS shift_end
FROM DUAL;

INSERT INTO events (event_date) 
SELECT CURRENT_DATE + (LEVEL - 1) * 14 
FROM DUAL 
CONNECT BY LEVEL <= 6;

INSERT INTO events (event_date) 
SELECT CURRENT_DATE + NUMTODSINTERVAL((LEVEL - 1) * 14, 'DAY') 
FROM DUAL 
CONNECT BY LEVEL <= 6;  

SELECT project_id, (CURRENT_DATE - start_date) * 5/7 AS working_days
FROM projects;

CREATE TABLE PROJECTS (
    project_id NUMBER PRIMARY KEY,
    project_name VARCHAR2(50),
    start_date DATE
);

INSERT INTO PROJECTS (project_id, project_name, start_date) VALUES (1, 'Project Alpha', TO_DATE('2025-01-02', 'YYYY-MM-DD'));
INSERT INTO PROJECTS (project_id, project_name, start_date) VALUES (2, 'Project Beta', TO_DATE('2025-02-15', 'YYYY-MM-DD'));
INSERT INTO PROJECTS (project_id, project_name, start_date) VALUES (3, 'Project Gamma', TO_DATE('2025-03-10', 'YYYY-MM-DD'));
INSERT INTO PROJECTS (project_id, project_name, start_date) VALUES (4, 'Project Delta', TO_DATE('2025-04-01', 'YYYY-MM-DD'));
INSERT INTO PROJECTS (project_id, project_name, start_date) VALUES (5, 'Project Epsilon', TO_DATE('2025-05-20', 'YYYY-MM-DD'));
INSERT INTO PROJECTS (project_id, project_name, start_date) VALUES (6, 'Project Zeta', TO_DATE('2025-06-05', 'YYYY-MM-DD'));
INSERT INTO PROJECTS (project_id, project_name, start_date) VALUES (7, 'Project Eta', TO_DATE('2025-07-11', 'YYYY-MM-DD'));
INSERT INTO PROJECTS (project_id, project_name, start_date) VALUES (8, 'Project Theta', TO_DATE('2025-08-25', 'YYYY-MM-DD'));
INSERT INTO PROJECTS (project_id, project_name, start_date) VALUES (9, 'Project Iota', TO_DATE('2025-09-14', 'YYYY-MM-DD'));
INSERT INTO PROJECTS (project_id, project_name, start_date) VALUES (10, 'Project Kappa', TO_DATE('2025-10-01', 'YYYY-MM-DD'));

SELECT project_id, TRUNC((CURRENT_DATE - start_date) -
(TRUNC((CURRENT_DATE - start_date)/7)*2)) AS working_days
FROM projects;

SELECT project_id, (CURRENT_DATE - start_date) - (TRUNC((CURRENT_DATE - start_date)/7)*2) AS working_days
FROM projects;

SELECT project_id, NUMTODSINTERVAL(CURRENT_DATE - start_date, 'DAY') * 5/7 AS working_days
FROM projects;
select * from employees;

SELECT employee_id,
       TRUNC(MONTHS_BETWEEN(CURRENT_DATE, hire_date)/12) || ' years ' ||
       MOD(TRUNC(MONTHS_BETWEEN(CURRENT_DATE, hire_date)), 12) || ' months' AS age
FROM employees;
