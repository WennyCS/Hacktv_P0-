-- Membuat tabel dalam database
CREATE TABLE teachers(
	id INT PRIMARY KEY not NULL AUTO_INCREMENT,
	first_name VARCHAR(20) NOT NULL,
  	last_name VARCHAR(20),
  	school VARCHAR(10) NOT NULL,
  	join_date DATE,
  	salary NUMERIC
);

-- Memasukkan Data
-- dengan id
INSERT INTO
	teachers(id, first_name, last_name, school, join_date, salary)
VALUES
	(1, 'Afif A.', 'Iskandar', 'Hacktiv8', '2021-07-27', 1000);

-- Memasukkan Data
-- tanpa id
INSERT INTO
	teachers(first_name, last_name, school, join_date, salary)
VALUES
	('Budi', 'Setiawan', 'Binomsky', '2021-07-27', 1000),

-- coba lagi
INSERT INTO
	teachers(first_name, last_name, school, join_date, salary)
VALUES
	('Budi', 'Setiawan', 'Binomsky', '2021-07-27', 1000),
	('Aji', 'Irawan', 'SMAN 2', '1998-07-27', 2000),
	('Irham', 'Prasetyo', 'SMP 3', '2021-07-27', 1000),
    ('Danu', 'Purnomo', 'Hacktiv8', '2021-07-27', 1000),
    ('Fahmi', 'Iman', 'Hacktiv8', '2021-07-27', 1000);

-- eksperimen data tidak lengkap
INSERT INTO
	teachers(first_name, school, join_date, salary)
VALUES
	('Budi', 'Setiawan', '2021-07-27', 1000);

-- lihat isi tabel teachers
-- seluruh isi tabel
SELECT * FROM teachers;

SELECT first_name, school FROM teachers;

-- Keyword alter (memodifikasi tabel)
-- menambah kolom age
ALTER TABLE teachers ADD age INT;

-- hapus kolom
ALTER TABLE teachers DROP COLUMN age;

-- ubah tipe data kolom
ALTER TABLE teachers MODIFY COLUMN salary INT;

-- ubah nama tabel
ALTER TABLE teachers RENAME TO guru;

SELECT * FROM guru;

-- select
SELECT
	id, first_name
from
	guru
WHERE
	id > 5;

-- hapus baris
DELETE FROM guru WHERE id=8;