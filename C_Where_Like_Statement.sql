#WHERE Clause

SELECT *
FROM employee_salary
WHERE first_name = 'Leslie'
;

#Salary >= 50k
SELECT *
FROM employee_salary
WHERE salary >= 50000
;

#Salary <=50K
SELECT *
FROM employee_salary
WHERE salary <= 50000
;

#Gednder from Employee_Dem
SELECT *
FROM employee_demographics
WHERE gender != 'female'
;

#Employee Age
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;
-- AND OR NOT -- Logical Operator
#AND
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male'
;
#OR
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'male'
;
#OR NOT
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male'
;
#AND & OR
SELECT *
FROM employee_demographics
WHERE (first_name = 'leslie' AND age = 44)
OR age > 55
;
-- Like Statement
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%'
;

-- Like Statement __%
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__%'
;
SELECT *
FROM employee_demographics
WHERE birth_date LIKE '198_%'
;