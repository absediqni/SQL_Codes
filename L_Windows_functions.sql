-- Window Functions

# USING Group By function
SELECT gender, AVG(salary) AS Avg_salary
FROM parks_and_recreation.employee_demographics AS ED
JOIN
 parks_and_recreation.employee_salary AS ES
GROUP BY gender
;
#Using Windows function
SELECT 
ED.first_name,
ED.last_name,
gender, 
salary,
AVG(salary) OVER(PARTITION BY gender ) AS Avg_salary_gender
FROM parks_and_recreation.employee_demographics AS ED
JOIN
 parks_and_recreation.employee_salary AS ES
ON ED.employee_id = ES.employee_id
;
# Rolling total
SELECT 
ED.first_name,
ED.last_name,
gender, 
SUM(salary) OVER(PARTITION BY gender ORDER BY ED.employee_id) AS Rolloing_total
FROM parks_and_recreation.employee_demographics AS ED
JOIN
 parks_and_recreation.employee_salary AS ES
ON ED.employee_id = ES.employee_id
;

#Row Number & Rank
SELECT ED.employee_id,
ED.first_name,
ED.last_name,
gender, 
salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY Salary DESC ) AS Row_num,
RANK() OVER(PARTITION BY gender ORDER BY Salary DESC ) AS Rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY Salary DESC ) AS Dense_rank_num
FROM parks_and_recreation.employee_demographics AS ED
JOIN
 parks_and_recreation.employee_salary AS ES
ON ED.employee_id = ES.employee_id
;