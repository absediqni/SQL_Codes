-- String functions

SELECT LENGTH('skyfall'); -- COunt
SELECT UPPER('skyfall'); -- Uppercase
SELECT LOWER('skyfall'); -- Lowercase
SELECT TRIM('skyfall    '); -- Remove sapces (L/R)

SELECT first_name, LENGTH(first_name)
FROM parks_and_recreation.employee_demographics
ORDER BY 2
;

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3,2),
birth_date,
SUBSTRING(birth_date, 6, 2) AS Birth_month
FROM parks_and_recreation.employee_demographics
;
-- Replace
SELECT first_name, REPLACE(first_name, 'a','z')
FROM parks_and_recreation.employee_demographics
; 
-- Locate
SELECT LOCATE('N','Abubakar')
;
SELECT first_name, LOCATE('An',first_name)
FROM parks_and_recreation.employee_demographics
;

-- Concatenate
SELECT first_name, last_name,
CONCAT(first_name,' ',last_name) AS Full_name
FROM parks_and_recreation.employee_demographics
;