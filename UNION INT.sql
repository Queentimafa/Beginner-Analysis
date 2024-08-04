-- UNION
# IT ALLOWS YOU TO JOINS ROWS TOGETHER SAME OR SEPERATE TABLES. UNION IS UNION DISTINCT BY DEFAULT.

SELECT first_name, last_name
FROM employee_demographics
UNION DISTINCT
SELECT first_name, last_name
FROM employee_salary
;

# UNION ALL WILL SHOW ALL DUBLICATE

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary
;

SELECT first_name, last_name, 'Old man' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly paid employee' AS label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;