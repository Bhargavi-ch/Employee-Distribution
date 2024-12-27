CREATE DATABASE projects;
USE projects;
SELECT * FROM hr;
ALTER TABLE hr
CHANGE COLUMN ï»¿id emp_id VARCHAR(20) NULL;
DESCRIBE hr;
SELECT dob FROM hr;
SET sql_safe_updates=0;
UPDATE hr
SET birthdate= CASE
WHEN birthdate LIKE '%/%' THEN  date_format(str_to_date(birthdate, '%m/%d/%Y'), '%Y-%m-%d')
WHEN birthdate LIKE '%-%' THEN  date_format(str_to_date(birthdate, '%m-%d-%Y'), '%Y-%m-%d')
ELSE NULL
END;
ALTER TABLE hr
CHANGE COLUMN birthdate dob DATE;
UPDATE hr
SET hire_date= CASE
WHEN hire_date LIKE '%/%' THEN  date_format(str_to_date(hire_date, '%m/%d/%Y'), '%Y-%m-%d')
WHEN hire_date LIKE '%-%' THEN  date_format(str_to_date(hire_date, '%m-%d-%Y'), '%Y-%m-%d')
ELSE NULL
END;
ALTER TABLE hr
MODIFY COLUMN hire_date DATE;
SELECT * FROM hr;
DESCRIBE hr;
UPDATE hr
SET termdate = '0000-00-00'
WHERE termdate = '';
ALTER TABLE hr
MODIFY COLUMN termdate DATE;
SELECT termdate FROM hr;
SET sql_mode = '';
ALTER TABLE hr ADD COLUMN age INT;
UPDATE hr
SET age= timestampdiff(YEAR,dob, CURDATE());
SELECT dob, age FROM hr;
SELECT 
    MIN(age) AS youngest, 
    MAX(age) AS oldest
FROM hr; 
SELECT * FROM hr;









 

