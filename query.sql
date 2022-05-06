-- List the following details of each employee: employee number, last name, first name, sex, and salary.

select e.emp_no, 
	e.last_name, 
	e.first_name, 
	e.sex, 
	s.salary
from employees as e
join salaries as s 
	on e.emp_no = s.emp_no;
-- List first name, last name, and hire date for employees who were hired in 1986.

select first_name, 
	last_name, 
	sex, 
	hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';
-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select 
	m.dept_no,
	d.dept_name,
	m.emp_no, 
	e.last_name,
	e.first_name
from dept_manager as m
join departments as d 
	on m.dept_no = d.dept_no
join employees as e 
	on e.emp_no = m.emp_no;
-- List the department of each employee with the following information: employee number, last name, first name, and department name.

select e.emp_no, 
	e.last_name, 
	e.first_name, 
	d.dept_name
from employees as e
join dept_emp as junct 
	on e.emp_no = junct.emp_no
join departments as d 
	on junct.dept_no = d.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select first_name, 
	last_name, 
	sex, 
from employees
where first_name = 'Hercules' 
and  last_name like 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

select e.emp_no, 
	e.last_name, 
	e.first_name, 
	d.dept_name
from employees as e
join dept_emp as junct 
	on e.emp_no = junct.emp_no
join departments as d 
	on junct.dept_no = d.dept_no
where d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, 
	e.last_name, 
	e.first_name, 
	d.dept_name
from employees as e
join dept_emp as junct 
	on e.emp_no = junct.emp_no
join departments as d 
	on junct.dept_no = d.dept_no
where d.dept_name = 'Sales' 
or d.dept_name = 'Development'
order by last_name;

-- List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
select last_name, COUNT(last_name) as "frequency"
from employees 
group by last_name
order by frequency desc;
