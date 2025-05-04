-- Joins
SELECT *
FROM parks_and_recreation.employee_demographics
;

SELECT *
FROM parks_and_recreation.employee_salary
;
SELECT *
FROM parks_and_recreation.parks_departments;
-- Inner Join
SELECT *
FROM parks_and_recreation.employee_demographics AS ED
INNER JOIN parks_and_recreation.employee_salary AS ES
	ON ED.employee_id = ES.employee_id
;
-- Selecting and actual column
SELECT ED.employee_id, age, occupation
FROM parks_and_recreation.employee_demographics AS ED
INNER JOIN parks_and_recreation.employee_salary AS ES
	ON ED.employee_id = ES.employee_id
;

-- LEFT OUTTER JOIN
SELECT *
FROM parks_and_recreation.employee_demographics AS ED
LEFT JOIN parks_and_recreation.employee_salary AS ES
	ON ED.employee_id = ES.employee_id
;
-- RIGHT OUTTER JOIN
SELECT *
FROM parks_and_recreation.employee_demographics AS ED
RIGHT JOIN parks_and_recreation.employee_salary AS ES
	ON ED.employee_id = ES.employee_id
;
-- SELF JOIN
SELECT *
FROM parks_and_recreation.employee_salary AS ES
JOIN parks_and_recreation.employee_salary AS ES1
	ON ES.employee_id + 1 = ES1.employee_id
    
;

SELECT ES.employee_id AS Emp_santa,
ES.first_name AS First_name,
ES.last_name AS Last_name,
ES1.employee_id AS Emp_santa,
ES1.first_name AS First_name,
ES1.last_name AS Last_name

FROM parks_and_recreation.employee_salary AS ES
JOIN parks_and_recreation.employee_salary AS ES1
	ON ES.employee_id + 1 = ES1.employee_id
;

-- Joinin mUltiple table

SELECT *
FROM parks_and_recreation.employee_demographics AS ED
INNER JOIN parks_and_recreation.employee_salary AS ES
	ON ED.employee_id = ES.employee_id
INNER JOIN parks_and_recreation.parks_departments AS PD
	ON ES.dept_id = PD.department_id
;

