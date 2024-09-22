-- Language: MySQL

-- Employee Names
SELECT name FROM Employee
ORDER BY Name ASC;

-- Employee Salaries
SELECT name FROM Employee
    WHERE salary > 2000 and months < 10
    ORDER BY employee_id ASC;

-- Top Earners
SELECT MAX(months * salary), COUNT(employee_id) FROM Employee
    WHERE months * salary = (SELECT MAX(months * salary) FROM Employee);
