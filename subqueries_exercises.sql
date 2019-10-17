use employees;

SELECT * from employees
where hire_date IN(
        SELECT hire_date from employees
        where emp_no = 101010
    );

SELECT title from titles
where emp_no IN(
    Select emp_no from employees
    where first_name = 'aamod'
)
group by title
;



SELECT first_name, last_name from employees
where emp_no IN(
    SELECT emp_no from dept_manager
    where emp_no IN(
        SELECT emp_no from employees
        where gender = 'f'
    )
    and to_date > now()
);

SELECT dept_name from departments
where dept_no in (
    SELECT dept_no from dept_manager
    where emp_no IN(
        SELECT emp_no from dept_manager
        where emp_no IN(
            SELECT emp_no from employees
            where gender = 'f'
        )
          and to_date > now()
    )
);


SELECT first_name, last_name from employees
where emp_no IN (
    SELECT emp_no from salaries
    where salary in (
        SELECT max(salary) from salaries
    )
)
;

