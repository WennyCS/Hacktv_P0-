-- membuat tabel teachers
CREATE TABLE teachers(
	id INT PRIMARY KEY not NULL AUTO_INCREMENT,
	first_name VARCHAR(20) NOT NULL,
  	last_name VARCHAR(20),
  	school_id VARCHAR(10) NOT NULL,
  	join_date DATE,
  	salary NUMERIC
);

-- membuat tabel schools
CREATE TABLE schools(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL
);

-- memasukkan data schools
INSERT INTO schools(name)
VALUES
('SMP Negeri 1'),
('SMP Negeri 2'),
('SMP Negeri 3'),
('SMP Negeri 4'),
('SMP Negeri 5');


-- memasukkan data teachers

INSERT INTO teachers(first_name, last_name, school_id, join_date, salary)
VALUES 
    ('Samuel', 'Abbers', 1, '2006-01-30', 32000),
    ('Jessica', 'Abbers', 2, '2005-01-30', 33000),
    ('Tom', 'Massi', 2, '1999-09-09', 39500),
    ('Esteban', 'Brown', 5, '2007-01-30', 36000),
    ('Carlos', 'Alonso', 5, '2001-01-30', 44000),
    ('Afif', 'Iskandar', 5, '2020-01-30', 44000);

INSERT INTO teachers (first_name, last_name, school_id, join_date, salary)
VALUES 
    ('Budi', 'Setiawan', 6, '2006-01-30', 32000);
    
-- join tabel sederhana
SELECT *
FROM teachers
RIGHT JOIN schools
ON teachers.school_id = schools.id;

SELECT *
FROM teachers

SELECT *
FROM schools

SELECT *
FROM teachers
LEFT JOIN schools
ON teachers.school_id = schools.id;

SELECT COUNT(1) FROM teachers;
