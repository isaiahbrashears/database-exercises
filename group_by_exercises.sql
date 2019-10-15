use employees;

SELECT DISTINCT title
from titles;


SELECT Last_name, first_name FROM employees
WHERE last_name like 'E%'
and last_name like '%E'
group by last_name, first_name ;


SELECT last_name, count(first_name) FROM employees
WHERE last_name like  '%q%'
AND last_name NOT like '%qu%'
GROUP BY last_name;


SELECT count(*), gender FROM employees
WHERE first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya'
group by gender ;

