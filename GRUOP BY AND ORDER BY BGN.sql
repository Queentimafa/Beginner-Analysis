-- GROUP BY--

SELECT* 
FROM parks_and_recreation.employee_demographics
;

SELECT gender
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

SELECT occupation, salary
FROM parks_and_recreation.employee_salary
GROUP BY occupation, salary
;

SELECT gender, AVG(age), MIN(age), MAX(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

-- ORDER BY--
# SORT THE RESULT SET EITHER BY ASCENDING OR DESCENDING ORDER
SELECT* 
FROM parks_and_recreation.employee_demographics
ORDER BY first_name ASC
;

SELECT* 
FROM parks_and_recreation.employee_demographics
ORDER BY first_name DESC
;

SELECT* 
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age 
;
#THE ORDER IN WHICH YOU PLACE THE COLUMN IS VERY IMPORTANT, ALWAYS LOOK AT THE COLUMNS WITH DISTINCT VALUES.
SELECT* 
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age DESC
;