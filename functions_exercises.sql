USE employees;

# SELECT * FROM employees
# WHERE gender = 'M'
#     AND first_name = 'Irena'
#     OR gender = 'M'
#     AND first_name = 'Vidya'
#     OR gender = 'M'
#     AND first_name = 'Maya'
#     ORDER BY last_name, first_name;


# SELECT * FROM employees
# WHERE last_name like 'E%'
#     OR last_name like '%E'
#     ORDER BY emp_no desc;


SELECT CONCAT(first_name,' ', last_name) as "Full Name"
FROM employees
WHERE last_name like 'E%'
   and last_name like '%E';


SELECT DATEDIFF(curdate(), hire_date) as 'Days Employed'
FROM employees
WHERE hire_date LIKE '199%'
    AND birth_date like '%-12-25'
    order by birth_date, hire_date desc;


# SELECT * FROM employees
# WHERE birth_date like '%-12-25';



# SELECT * FROM employees
# WHERE last_name like 'q%'
#     AND last_name NOT like 'qu%'
#    OR last_name like  '%q%'
#     AND last_name NOT like '%qu%'
#    OR last_name like  '%q'
#     AND last_name NOT like '%qu';