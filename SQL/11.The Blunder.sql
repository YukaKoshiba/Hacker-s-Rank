-- Language: MySQL

-- The Blunder
SELECT CEIL(
    (SELECT AVG(Salary) FROM EMPLOYEES)-
    (SELECT AVG(REPLACE(Salary,0,"")) FROM EMPLOYEES));
