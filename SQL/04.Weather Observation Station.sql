-- Language: MySQL

-- Weather Observation Station 1
SELECT CITY, STATE FROM STATION;

-- Weather Observation Station 2
SELECT ROUND(SUM(LAT_N),2) AS lat, ROUND(SUM(LONG_W),2) AS lon FROM STATION;

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
    WHERE LEFT(CITY,1) NOT IN ('a','i','u','e','o') and RIGHT(CITY,1) NOT IN ('a','i','u','e','o');

-- Weather Observation Station 13
SELECT FLOOR(SUM(LAT_N)*10000)/10000 FROM STATION
    WHERE LAT_N BETWEEN 38.7880 AND 137.2345 ;

-- Weather Observation Station 14
SELECT FLOOR(MAX(LAT_N)*10000)/10000 FROM STATION
    WHERE LAT_N <137.2345;

-- Weather Observation Station 15
SELECT ROUND(LONG_W,4) FROM STATION
    WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345);

-- Weather Observation Station 16
SELECT ROUND(MIN(LAT_N),4) FROM STATION
    WHERE LAT_N > 38.7780;

-- Weather Observation Station 17
SELECT ROUND(LONG_W,4) FROM STATION
    WHERE LAT_N =
    (SELECT MIN(LAT_N) FROM STATION
     WHERE LAT_N > 38.7780);

-- Weather Observation Station 18
SELECT ABS(ROUND(MIN(LAT_N)-MAX(LAT_N)+MIN(LONG_W)-MAX(LONG_W),4)) FROM STATION;
