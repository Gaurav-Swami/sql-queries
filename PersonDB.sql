CREATE TABLE  person(
	id INT,
	name VARCHAR(100),
	city VARCHAR(100)
);

SELECT * FROM person;

INSERT INTO person VALUES (101, 'Raju', 'Delhi');

INSERT INTO person VALUES (102, 'Sham', 'Mumbai');
INSERT INTO person VALUES (103, 'Paul', 'Chennai');
INSERT INTO person VALUES (104, 'Alex', 'Pune');

UPDATE person SET city = 'London' WHERE id = 102;

DELETE FROM person WHERE id = 104;

INSERT INTO person VALUES (101, 'Alex', 'Banglore');
INSERT INTO person(id,name) VALUES (105, 'Victa');



