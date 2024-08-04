SELECT*
FROM parks_and_recreation.employee_demographics;

SELECT first_name,
last_name,
birth_date,
age,
age + 10
FROM parks_and_recreation.employee_demographics;
#PEMDAS- PARENTHESIS, EXPONENT, MULTIPLICATION, DIVISION, ADDITION, SUBTRACTION

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT first_name, gender
FROM parks_and_recreation.employee_demographics;