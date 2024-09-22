-- Language: MySQL

-- Weather Observation Station 1
SELECT CITY, STATE FROM STATION;

-- Weather Observation Station 3
SELECT DISTINCT CITY FROM STATION
    WHERE MOD(ID,2)=0;

-- Weather Observation Station 4
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;

-- Weather Observation Station 5
(SELECT CITY, LENGTH(CITY) AS LEN FROM STATION ORDER BY LEN ASC, CITY LIMIT 1)
UNION
(SELECT CITY, LENGTH(CITY) AS LEN FROM STATION ORDER BY LEN DESC, CITY LIMIT 1);

-- Weather Observation Station 6
SELECT DISTINCT CITY FROM STATION
    WHERE
      CITY LIKE 'a%' or 
      CITY LIKE 'e%' or 
      CITY LIKE 'i%' or 
      CITY LIKE 'o%' or 
      CITY LIKE 'u%';

-- Weather Observation Station 7
SELECT DISTINCT CITY FROM STATION
  WHERE
    CITY LIKE '%a' or 
    CITY LIKE '%e' or 
    CITY LIKE '%i' or 
    CITY LIKE '%o' or 
    CITY LIKE '%u';

-- Weather Observation Station 8
SELECT CITY FROM STATION
  WHERE LEFT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u')
  AND RIGHT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u')
  ORDER BY CITY ASC;

-- Weather Observation Station 9
SELECT DISTINCT CITY FROM STATION
    WHERE LEFT(CITY,1) NOT IN ('a','i','o','e','u');

-- Weather Observation Station 10
SELECT DISTINCT CITY FROM STATION
    WHERE RIGHT(CITY,1) NOT IN ('a','i','o','e','u');

-- Weather Observation Station 11
(SELECT CITY FROM STATION
    WHERE LEFT(CITY,1) NOT IN ('a','i','u','e','o'))
UNION
(SELECT CITY FROM STATION
    WHERE RIGHT(CITY,1) NOT IN ('a','i','u','e','o'));

-- Weather Observation Station 12
SELECT DISTINCT CITY FROM STATION
    WHERE LEFT(CITY,1) NOT IN ('a','i','u','e','o') and RIGHT(CITY,1) NOT IN ('a','i','u','e','o')
