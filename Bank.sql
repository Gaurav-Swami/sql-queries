create table employees(
	emp_id serial  PRIMARY KEY,
	fname varchar(50) not null,
	lname varchar(50) not null,
	email varchar(100) not null unique ,
	dept varchar (50),
	salary decimal(10,2) default 30000.00	,
	hire_date date not null default current_date
);

INSERT INTO employees (emp_id, fname, lname, email, dept, salary, hire_date) VALUES
(1, 'Raj', 'Sharma', 'raj.sharma@example.com', 'IT', 50000.00, '2020-01-15'),
(2, 'Priya', 'Singh', 'priya.singh@example.com', 'HR', 45000.00, '2019-03-22'),
(3, 'Arjun', 'Verma', 'arjun.verma@example.com', 'IT', 55000.00, '2021-06-01'),
(4, 'Suman', 'Patel', 'suman.patel@example.com', 'Finance', 60000.00, '2018-07-30'),
(5, 'Kavita', 'Rao', 'kavita.rao@example.com', 'HR', 47000.00, '2020-11-10'),
(6, 'Amit', 'Gupta', 'amit.gupta@example.com', 'Marketing', 52000.00, '2020-09-25'),
(7, 'Neha', 'Desai', 'neha.desai@example.com', 'IT', 48000.00, '2019-05-18'),
(8, 'Rahul', 'Kumar', 'rahul.kumar@example.com', 'IT', 53000.00, '2021-02-14'),
(9, 'Anjali', 'Mehta', 'anjali.mehta@example.com', 'Finance', 61000.00, '2018-12-03'),
(10, 'Vijay', 'Nair', 'vijay.nair@example.com', 'Marketing', 50000.00, '2020-04-19');


-- serial number helps in automatically enterint the number values if they are in SEQUENCE

INSERT INTO employees (fname,lname,email,dept) VALUES ('Gaurav','Swami','gauravswami@gmail.com','IT');
INSERT INTO employees (fname,lname,email,dept) VALUES ('Bhanwarlald','Swamid','bhanwarlal@gmail.com','IT');

SELECT * FROM employees;

--where clause

DELETE FROM employees WHERE emp_id = 11 OR emp_id = 12;
select * from employees where emp_id = 5;

select * FROM employees where dept = 'HR';

select * from employees where salary >= 50000.0;

--logical operators
select * from employees where dept = 'HR' or dept = 'IT';

select * from employees where dept = 'IT' and salary > 50000;
select * from employees where dept = 'IT' and salary <= 50000;
select * from employees where dept in ('HR', 'IT', 'Finance');
select * from employees where dept not in ('HR', 'IT', 'Finance');

--between

select * from employees where salary between 40000 and 65000;

--distinct (unique values)
select distinct dept from employees dept;

--Order by (following a specific sequence)
select * from employees order by fname;

--Descending
select * from employees order by fname desc;
select * from employees order by emp_id desc;

--limit
select * from employees limit 3;

--like clause
select * from employees where fname like 'A%';
select * from employees where fname like '%a';
select * from employees where lname like '%a';
select * from employees where fname like 'R__';

--counting records (using primary key is recommended)
select count(emp_id) from employees;

--summing up salary
select sum(salary) from employees;

--average salary
select avg(salary) from employees;

--minimum and max 
select min(salary) from employees;
select max(salary) from employees;

-- group by
select dept, count(emp_id) from employees group by dept;
select dept, sum(salary) from employees group by dept;

-- String functions

-- concat
select concat('hello'	,'world');
select concat(fname, ' ', lname) as name from employees ;

--concat_ws()
select concat_ws(' ',fname,lname) as fullname from employees;

--substr ()
select substr('hello budddy', 7);

--replace()
select replace ('abcxyz','abc','uvw');
select replace(dept,'IT','Tech') from employees;

--reverse()
select reverse('hello');
select reverse('gaurav');
select reverse(fname) from employees;

--length()
select  length(fname),fname from employees;
select * from employees where length(fname)>5;

-- upper() and lower()
select upper(fname), lower(lname) from employees;

--left() and right()
select left(fname,3), right(lname,3) from employees;

--trim()
select trim(' gaurav '), length(' gaurav '), length('gaurav');

--position()
select position('av' in 'gaurav');

--exercise

select concat_ws(':',fname,lname,dept) from employees where emp_id = 1;
select concat_ws(':',fname,lname,dept,salary) from employees where emp_id = 1;
select concat_ws(':',concat_ws(' ',fname,lname),dept,salary) from employees where emp_id = 1;

select concat_ws(':',emp_id,fname,upper(dept)) from employees where emp_id = 4;

select concat_ws(' ', concat(left(dept,1),emp_id),fname) from employees where emp_id < 3;

select dept from employees group by dept;
select * from employees order by salary desc;
select * from employees limit 3;
select * from employees where fname like 'A%';
select * from employees where length(lname)=4;
select count(emp_id) from employees;
select dept, count(emp_id) from employees group by dept;
select min(salary) from employees;
select max(salary) from employees;
select sum(salary) from employees where dept = 'HR';

--finding details of the max salaried person
select * from employees order by salary desc limit 1;
select * from employees where salary = (select max(salary) from employees);

