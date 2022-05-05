# sql-challenge
homework week 9

DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;

CREATE TABLE "departments" (
	"dept_no" varchar(255) PRIMARY KEY  NOT NULL,
    "dept_name" varchar(255) UNIQUE  NOT NULL
 );

 CREATE TABLE "titles" (
     "title_id" varchar(255) PRIMARY KEY NOT NULL,
     "title" varchar(255) UNIQUE  NOT NULL
 );

CREATE TABLE "employees" (
     "emp_no" int PRIMARY KEY  NOT NULL,
     "emp_title" varchar(255)   NOT NULL,
     FOREIGN KEY (emp_title) REFERENCES titles(title_id),
     "birth_date" date   NOT NULL,
     "first_name" varchar(255)   NOT NULL,
     "last_name" varchar(255)   NOT NULL,
     "sex" Varchar(1)   NOT NULL,
    "hire_date" date   NOT NULL
 );

CREATE TABLE "salaries" (
     "emp_no" int   NOT NULL,
     "salary" int   NOT NULL,
     FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
 );

CREATE TABLE "dept_manager" (
     "dept_no" varchar(255) NOT NULL,
     "emp_no" int NOT NULL,
     PRIMARY KEY (dept_no, emp_no),
     FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
     FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
 );

 CREATE TABLE "dept_emp" (
     "emp_no" int   NOT NULL,
     "dept_no" varchar(255)   NOT NULL,
     PRIMARY KEY (dept_no, emp_no),
     FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
     FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
 );


-- -- -- -- select * from employees

select  * from titles
