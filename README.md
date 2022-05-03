# sql-challenge
homework week 9

ERD code backup:
# Modify this code to update the DB schema diagram.
# To reset the sample schema, replace everything with
# two dots ('..' - without quotes).

departments
-
dept_no PK int
dept_name string 

employees
-
emp_no PK int
emp_title int FK >- titles.title_id
birth_date date
first_name varchar(255)
last_name varchar(255)
sex Varchar(1)
hire_date date

salaries as sal
----
emp_no FK - employees.emp_no int
salary  int 

titles 
------------
title_id PK int
title varchar(255) UNIQUE

dept_manager as os
----
dept_no  FK >- departments.dept_no int
emp_no FK -0 employees.emp_no int

dept_emp as os
----
emp_no FK - employees.emp_no int
dept_no FK >- departments.dept_no int
