USE employees;

SELECT * FROM employees
WHERE gender = 'M'
    AND first_name = 'Irena'
    OR gender = 'M'
    AND first_name = 'Vidya'
    OR gender = 'M'
    AND first_name = 'Maya';


# SELECT * FROM employees
# WHERE last_name like 'E%'
#     OR last_name like '%E';


SELECT * FROM employees
WHERE last_name like 'E%'
   and last_name like '%E';


# SELECT * FROM employees
# WHERE hire_date LIKE '199%'
#     AND birth_date like '%-12-25';


# SELECT * FROM employees
# WHERE birth_date like '%-12-25';



SELECT * FROM employees
WHERE last_name like  '%q%'
    AND last_name NOT like '%qu%';
