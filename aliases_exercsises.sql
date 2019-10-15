use employees;

SELECT Concat(emp_no, " - ", last_name, ", ", first_name) As 'full_name', birth_date As 'DOB'
from employees
limit 10;