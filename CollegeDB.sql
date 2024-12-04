-- Many to Many Relationship

--student table
CREATE TABLE students(
	s_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

--courses table
CREATE TABLE courses (
	c_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	fee NUMERIC NOT NULL
);

--Enrollment Table
CREATE TABLE enrollment (
	enrollment_id SERIAL PRIMARY KEY,
	s_id INT NOT NULL,
	c_id INT NOT NULL,
	enrollment_date DATE NOT NULL,
	FOREIGN KEY(s_id) REFERENCES students(s_id),
	FOREIGN KEY(c_id) REFERENCES courses(c_id)
);

--insert values into students
INSERT INTO students(name) VALUES ('Raju'),('Sham'),('Alex');

--insert values into courses
INSERT INTO courses (name,fee) VALUES 
('Maths', 500.0),
('Physics',600.0),
('Chemistry',700.0);

--insert into enrollment
INSERT INTO enrollment (s_id,c_id,enrollment_date) VALUES
(1,1,'2024-01-01'), --Raju enrolled in mathematics
(1,2,'2024-01-15'), --Raju enrolled in Physics
(2,1,'2024-02-01'), --Sham enrolled in mathematics
(2,3,'2024-02-15'), --Sham enrolled in Chemistry
(3,3,'2024-03-25'); --Alex enrolled in Chemistry

drop table enrollment;
--respective select queries
SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM enrollment;
