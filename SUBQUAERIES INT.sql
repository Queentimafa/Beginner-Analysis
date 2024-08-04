-- SUBQUERIES

SELECT*
FROM employee_demographics
WHERE employee_id IN 
				(SELECT employee_id
				FROM employee_salary
                WHERE dept_id = 1)
;

SELECT first_name, salary,
(SELECT AVG (salary)
 FROM employee_salary)
FROM employee_salary;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

SELECT AVG(max_age)
FROM 
(SELECT gender, 
AVG(age) AS Avg_age, 
MAX(age) AS max_age, 
MIN(age) AS min_age,
COUNT(age)
FROM employee_demographics
GROUP BY gender) AS Agg_table
;
# REMEMBER TO NAME YOUR AGG AFTER PARENTHESIS
# YOU ALSO HAVE TO PUT A BACK TICK( `THE TAB UNDER THE ESC TAB OR ONTOP OF TAB) IF YOU DONT NAME THE AGG.

