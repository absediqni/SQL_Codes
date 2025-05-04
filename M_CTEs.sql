-- CTEs (used within)
WITH CTE_Example AS
(
SELECT gender, 
AVG(salary) AS Avg_salary,
MAX(salary) AS Max_salary,
MIN(salary) AS Min_salary,
COUNT(salary) AS Salary_count
FROM 
parks_and_recreation.employee_demographics AS ED
JOIN
parks_and_recreation.employee_salary AS ES
 ON ED.employee_id = ES.employee_id
GROUP BY gender
)
SELECT Avg_salary
FROM CTE_Example
;
#CTE within CTE
WITH CTE_Example AS
(
SELECT employee_id, gender, birth_date 
FROM 
parks_and_recreation.employee_demographics AS ED
WHERE birth_date > '1985-01-01'
),
CTE_Example1 AS
(
SELECT employee_id, salary
FROM parks_and_recreation.employee_salary
WHERE salary > 50000
)
SELECT *
FROM 
CTE_Example
JOIN
CTE_Example1
	ON CTE_Example.employee_id = CTE_Example1.employee_id

;