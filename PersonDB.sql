CREATE TABLE  person(
	id INT,
	name VARCHAR(100),
	city VARCHAR(100)
);



INSERT INTO person VALUES (101, 'Raju', 'Delhi');

INSERT INTO person VALUES (102, 'Sham', 'Mumbai');
INSERT INTO person VALUES (103, 'Paul', 'Chennai');
INSERT INTO person VALUES (104, 'Alex', 'Pune');

UPDATE person SET city = 'London' WHERE id = 102;

DELETE FROM person WHERE name = 'Alex';

INSERT INTO person VALUES (101, 'Alex', 'Banglore');
INSERT INTO person(id,name) VALUES (105, 'Victa');

--alter table
-- add column
alter table person add column age int  ;
alter table person add column age int default 0 ;

-- drop column
alter table person drop column age;

-- rename column
alter table person rename name to fname;

--rename table
alter table person rename to persons;
alter table persons rename to person;

--change datatype
alter table person alter column fname set data type varchar(69);

--set default
alter table person alter column fname set default 'unknown';

--drop default
alter table person alter column fname  drop default;

--select universal
SELECT * FROM person;	

