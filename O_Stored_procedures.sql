-- Stored Procedures
SELECT *
FROM employee_salary
WHERE salary >= 50000
;
-- Stored Procdure(Can also specify Folder)
CREATE PROCEDURE Large_salary()
SELECT *
FROM employee_salary
WHERE salary >= 50000
;
CALL Large_salary();

DELIMITER $$
CREATE PROCEDURE Large_salaries()
BEGIN
	SELECT *
    FROM employee_salary
    WHERE salary >= 10000;
	SELECT *
    FROM employee_salary
    WHERE salary >= 50000;
    END $$
    DELIMITER ;
Call large_salaries()

-- PERIMITERS
DELIMITER $$
CREATE PROCEDURE Large_salarix(jay INT)
BEGIN
	SELECT salary
    FROM employee_salary
    WHERE employee_id = jay
    ;
    END $$
    DELIMITER ;
    
CALL Large_salarix(1)