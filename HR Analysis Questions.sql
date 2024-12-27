-- QUESTIONS
-- What is the gender breakdown of employees in the company?
SELECT gender,COUNT(*)AS COUNT
FROM hr
WHERE AGE >= 18 AND termdate= '0000-00-00'
GROUP BY gender;
-- what is the race/ethnicity breakdown of employees in the company?
SELECT race,COUNT(*)AS COUNT
FROM hr
WHERE AGE >= 18 AND termdate= '0000-00-00'
GROUP BY race
ORDER BY COUNT(*) DESC;
-- what is the age distribution of employees in the company?
SELECT 
  MIN(age) AS youngest,
  MAX(age) AS oldest
  FROM hr
  WHERE AGE >= 18 AND termdate= '0000-00-00';
  SELECT 
    CASE 
        WHEN age >= 18 AND age <= 24 THEN '18-24'
        WHEN age >= 25 AND age <= 34 THEN '25-34'
        WHEN age >= 35 AND age <= 44 THEN '35-44'
        WHEN age >= 45 AND age <= 54 THEN '45-54'
        WHEN age >= 55 AND age <= 64 THEN '55-64'
        ELSE '65+'
    END AS age_group,gender,
    COUNT(*) AS count
FROM hr
GROUP BY age_group, gender
ORDER BY age_group, gender;
-- How many employees work at head quarters vs remote locations?
SELECT location,
COUNT(*) AS COUNT
FROM hr
WHERE AGE >= 18 AND termdate= '0000-00-00'
GROUP BY location;
-- What is the average length of employment of employees who have terminated?
SELECT
round(AVG(datediff(termdate, hire_date))/365,0) AS avg_length_employment
FROM hr
WHERE termdate<= curdate() AND termdate<> '0000-00-00' AND age>= 18;
-- How does gender distribution vary across the departments?
SELECT department, gender,
COUNT(*) AS COUNT
FROM hr
WHERE AGE >= 18 AND termdate= '0000-00-00'
GROUP BY department, gender
ORDER BY department;
-- what is the distribution of job titles across the company?
SELECT jobtitle, COUNT(*) AS COUNT
FROM hr
WHERE AGE >= 18 AND termdate= '0000-00-00'
GROUP BY jobtitle
ORDER BY jobtitle DESC;
-- Which department has the highest turnover rate?
SELECT department,
total_count,
terminated_count,
terminated_count/total_count AS terminated_rate
FROM (
SELECT department,
COUNT(*) AS total_count,
sum(CASE WHEN termdate<> '0000-00-00' AND termdate <= curdate() THEN 1 ELSE 0 END) AS terminated_count
FROM hr
WHERE age >= 18
GROUP BY department
) AS subquery
ORDER BY terminated_rate DESC;
-- What is the distribution of employees across location by city and state?
SELECT location_state, COUNT(*) AS COUNT
FROM hr
WHERE AGE >= 18 AND termdate= '0000-00-00'
GROUP BY location_state
ORDER BY count DESC;
-- How has the companys employee count changed over time based on hiredates and termdates?
SELECT
YEAR,
hires,
terminations,
ROUND((hires-terminations)/hires * 100,2) AS net_changed_percent
FROM (
SELECT YEAR(hire_date) AS YEAR,
COUNT(*) AS hires,
SUM(CASE WHEN termdate<> '0000-00-00' AND termdate <= curdate() THEN 1 ELSE 0 END) AS terminations
FROM hr
WHERE age >= 18
GROUP BY year(hire_date)
) AS subquery
ORDER BY YEAR ASC;
-- what is the tenure distribution of each department?
SELECT department, round(AVG(datediff(termdate, hire_date)/365),0) AS avg_tenure
FROM hr
WHERE termdate <= curdate() AND termdate <> '0000-00-00' AND age>= 18
GROUP BY department;







