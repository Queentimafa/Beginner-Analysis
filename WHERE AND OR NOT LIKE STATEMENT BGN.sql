SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary >= '50000'
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE gender != 'female'
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
;
-- AND OR NOT -- logical operators

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary >= '50000'
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date = '1985-01-01'
AND gender = male
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55
;

-- LIKE Statement
-- % and _
# % means anything, _ means a specific value
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'Jer%'
;
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___'
;





