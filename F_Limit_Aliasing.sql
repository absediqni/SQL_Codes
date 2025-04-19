-- Limit and Aliasing
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3
;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3
;

#Selecting a sepcific range
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 2, 1
;

-- Aliasing
SELECT gender, AVG(age) AS AvgAge
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AvgAge > 40

;