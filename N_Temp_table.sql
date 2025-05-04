-- Temporary Tables
CREATE TEMPORARY TABLE Temp_table
( First_name Varchar(50),
Last_name varchar(50),
Favorite_movies varchar(100)
)
;
SELECT *
FROM Temp_table
;
INSERT INTO Temp_table
VALUES('ABSediq', 'Nuhu', 'Ready Player One')
;
-- FROM Existing database
SELECT *
FROM parks_and_recreation.employee_salary
;
CREATE TEMPORARY TABLE Salary_over_500k
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000
;
SELECT *
FROM Salary_over_500k
;