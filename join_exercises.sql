use employees;



# write a query that shows each department along with the name
# of the current manager for that department.

SELECT departments.dept_name as 'Department Name' , CONCAT(employees.first_name, ' ', employees.last_name) as 'Department Manager'
from employees
join dept_manager on employees.emp_no = dept_manager.emp_no
join departments on dept_manager.dept_no = departments.dept_no
where dept_manager.to_date > now()
order by departments.dept_name;


# women department managers

SELECT departments.dept_name as 'Department Name' , CONCAT(employees.first_name, ' ', employees.last_name) as "Department Manager"
from employees
join dept_manager on employees.emp_no = dept_manager.emp_no
join departments on dept_manager.dept_no = departments.dept_no
where dept_manager.to_date > now()
and employees.gender = 'F'
order by departments.dept_name;


# Find the current titles of employees currently
# working in the Customer Service department.

SELECT titles.title, count(*)
from titles
join employees on titles.emp_no = employees.emp_no
join dept_emp on employees.emp_no = dept_emp.emp_no
where titles.to_date > now()
and dept_no = 'd009'
group by titles.title;


# mangers salaries

SELECT departments.dept_name as 'Department Name' , CONCAT(employees.first_name, ' ', employees.last_name) as 'Department Manager', salaries.salary
from employees
join dept_manager on employees.emp_no = dept_manager.emp_no
join departments on dept_manager.dept_no = departments.dept_no
join salaries on employees.emp_no = salaries.emp_no
where dept_manager.to_date > now()
and salaries.to_date > now()
order by departments.dept_name;
