-- LIMIT & ALIASING
# LIMIT IS GOING TO SPECIFY HOW MANY ROWS YOU WANT IN YOUR OUTPUT

SELECT*
FROM parks_and_recreation.employee_demographics
LIMIT 3
; 

SELECT*
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3
; 

# WHEN YOU WANT TO LIMIT IT TO ONLY THE 3RD PERSON ON THE ROW

SELECT*
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 2, 1
; 

-- ALIASING
# IT IS JUST A WAY TO CHANGE THE NAME OF A COLUMN
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
