-- Language: MySQL

-- Draw The Triangle1
/*Set variables*/
SET @row := 21;
/*REPEAT(Repeated words, number of times repeated)*/
SELECT REPEAT('* ', @row := @row - 1) AS PATTERN
/*information_schema.tables:virtual table*/
FROM information_schema.tables
/*Repeat process for @row>1*/
WHERE @row > 1;

-- Draw The Triangle2
/*Set variables*/
SET @row := 0;
/*REPEAT(Repeated words, number of times repeated)*/
SELECT REPEAT('* ', @row := @row + 1) AS PATTERN
/*information_schema.tables:virtual table*/
FROM information_schema.tables
/*Repeat process for @row>1*/
WHERE @row < 20;
