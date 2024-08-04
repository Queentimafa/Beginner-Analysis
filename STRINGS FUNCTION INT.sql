-- String Functions
-- LENGTH
SELECT LENGTH('Fatimatu');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics;

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2
;

-- LOWER AND UPPER
SELECT LOWER('YAKUBU');
SELECT UPPER('yakubu');

SELECT first_name, UPPER(first_name)
FROM employee_demographics
ORDER BY 2
;
-- TRIM, LEFT TRIM AND RIGHT TRIM
SELECT TRIM('    Fatimatu Yakubu    ');
SELECT LTRIM('    Fatimatu Yakubu    ');
SELECT RTRIM('    Fatimatu Yakubu    ');

-- SUBSTRING

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2),
birth_date,
SUBSTRING(birth_date, 6, 2) AS birth_month
FROM employee_demographics;

-- REPLACE
SELECT first_name, REPLACE(first_name,'a','z')
FROM employee_demographics;

-- LOCATE
# IT HELPS LOCATE ITEMS, THE ITEM WE ARE SEARCHING FOR SHOULD COME BEFORE WHERE WE ARE LOOKING FOR THE ITEM FROM

SELECT LOCATE('a', 'Fatimatu');

SELECT first_name, LOCATE('An',first_name)
FROM employee_demographics;

-- CONCADENATE
SELECT first_name, last_name,
CONCAT(first_name,' ', last_name)
FROM employee_demographics;







