-- Language: MySQL

-- The PADS
SELECT CONCAT(Name, "(", Left(Occupation,1), ")") AS Name1
FROM OCCUPATIONS
ORDER BY Name1;

SELECT CONCAT("There are a total of ", COUNT(Occupation), " ",  LOWER(Occupation), "s.")
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation), Occupation;
