USE employees;

SELECT DISTINCT last_name
from employees
ORDER BY last_name desc
limit 10;


SELECT first_name, last_name
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date like '%-12-25'
order by birth_date, hire_date desc
limit 5;


SELECT first_name, last_name
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date like '%-12-25'
order by birth_date, hire_date desc
limit 5
offset 45;