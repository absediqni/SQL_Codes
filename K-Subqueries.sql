-- Subqueries
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE employee_id IN ( SELECT employee_id
							FROM parks_and_recreation.employee_salary
                            WHERE dept_id = 1

)
;


SELECT first_name, salary,
	( SELECT AVG(salary)
    FROM parks_and_recreation.employee_salary
    ) AS AverageSalary
FROM parks_and_recreation.employee_salary
;

SELECT gender, 
AVG(age) AS AverageAge,
MAX(age) AS MaxAge,
MIN(age) AS MinAge,
COUNT(age) AS AgeCount
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

SELECT  AVG(MaxAge)
FROM (SELECT gender,
AVG(age) AS AverageAge,
MAX(age) AS MaxAge,
MIN(age) AS MinAge,
COUNT(age) AS AgeCount
FROM parks_and_recreation.employee_demographics
GROUP BY gender) AS Agg_table
GROUP BY gender
;