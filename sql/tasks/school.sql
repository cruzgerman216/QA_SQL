
CREATE DATABASE IF NOT EXISTS school;
USE school;

CREATE TABLE students (
	student_id INT AUTO_INCREMENT,
  age INT NOT NULL,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  PRIMARY KEY  (student_id)
);

CREATE TABLE classes (
	class_id INT AUTO_INCREMENT,
  subject VARCHAR(45) NOT NULL,
  description VARCHAR(45) NOT NULL,
  level INT NOT NULL,
  PRIMARY KEY  (class_id)
);

CREATE TABLE enrollment (
	enrollment_id INT AUTO_INCREMENT,
	fk_student_id INT NOT NULL,
	fk_class_id INT NOT NULL,
	FOREIGN KEY (fk_student_id) REFERENCES students(student_id),
	FOREIGN KEY (fk_class_id) REFERENCES classes(class_id),
	PRIMARY KEY (enrollment_id)
);


INSERT INTO students (first_name, last_name, age)
VALUES ("jimmy", "james", 13),
("amy", "shultz", 17),
("Johns", "michaels", 16),
("stephanie", "arias", 13);

INSERT INTO classes (subject, description, level)
VALUES ("Algebra 2", "furthering Algebra 1 concepts.", 14),
("Biology", "biology of our enviornment", 15),
("Avid", "Ipreparing for college", 13);

INSERT INTO enrollment (fk_student_id, fk_class_id)
VALUES (1,2),(1,3),(2,1),(3,1),(3,2),(3,3),(4,1),(4,3);

SELECT classes.subject FROM students JOIN enrollment
ON students.student_id = enrollment.fk_student_id 
JOIN classes 
ON classes.class_id = enrollment.fk_class_id
WHERE students.first_name = "jimmy";