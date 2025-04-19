# GROUP by
SELECT *
FROM parks_and_recreation.employee_demographics
;

SELECT gender
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;
-- Aliasing AVG MAX MIN and COUNT
SELECT gender, 
AVG(age) AS AverageAge, 
MAX(age) AS MaximumAge, 
MIN(age) AS MinnimumAge, 
COUNT(age) AgeCount
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

-- ORDER By
#Ascending
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name ASC
;

#descending
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name DESC
;

#descending
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age DESC
;