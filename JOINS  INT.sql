-- JOINS
# IT ALLOWS YOU TO JOIN 2 OR MORE TABLES IF THEY HAVE COMMON COLUMNS, IT DOESNT MEAN THE COLUMN NAME HAS TO BE THE SAME BUT THE INFORMATION IN THE ROWS HAVE TO BE THE SAME.

SELECT *
FROM employee_demographics
;

SELECT *
FROM employee_salary
;
# INNER JOIN, THEY WILL RETURN ROWS THAT ARE THE SAME IN BOTH COLUMN IN THE TABLE.


SELECT *
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- OUTER JOINS
# WE HAVE LEFT JOIN OR RIGHT JOIN/ LEFT OUTER OR RIGHT OUTER JOIN

SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- SELF JOIN
#IT A JOIN WERE YOU TIGH THE TABLE TO ITSELF.

SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id = emp2.employee_id
    
;

SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
    
;

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_santa,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1= emp2.employee_id
    
;

-- JOINING MULTIPLE TABLES TOGETHER

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
 INNER JOIN parks_departments dp
	ON sal.dept_id = dp.department_id
;