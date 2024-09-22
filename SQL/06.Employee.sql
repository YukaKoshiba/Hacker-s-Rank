-- Language: MySQL

-- Employee Names
SELECT name FROM Employee
ORDER BY Name ASC;

-- Employee Salaries
SELECT name FROM Employee
    WHERE salary > 2000 and months < 10
    ORDER BY employee_id ASC;
