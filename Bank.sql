create table employees(
	emp_id serial  primary key,
	fname varchar(50) not null,
	lname varchar(50) not null,
	email varchar(100) not null unique ,
	dept varchar (50),
	salary decimal(10,2) default 30000.00,
	hire_date date not null default current_date
);

SELECT * FROM employees;
