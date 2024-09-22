-- Language: MySQL

-- Type of Triangle
SELECT
    CASE
        WHEN A+B<=C OR B+C<=A OR C+A<=B THEN 'Not A Triangle'
        WHEN A=B AND B=C AND C=A THEN 'Equilateral'
        WHEN A!=B AND B!=C AND C!=A THEN 'Scalene'
        WHEN A=B OR B=C OR C=A THEN 'Isosceles'
    END
FROM TRIANGLES;
