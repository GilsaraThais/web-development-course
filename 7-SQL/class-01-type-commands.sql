-- DDL
DROP TABLE students;
CREATE TABLE  IF NOT EXISTS students (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   name CHAR NOT NULL,
   CPF TEXT NOT NULL UNIQUE,
   age NUMERIC
);      

-- DML
INSERT INTO students (name, cpf, age) 
VALUES ('GOKU', '094.454.593-13', '20'
);

-- DQL
SELECT name, age FROM students;

SELECT * FROM students 
WHERE id >= 2 LIMIT 3;

SELECT * FROM students
WHERE age >=18 and age <=67;

--DML
UPDATE students 
SET age = 36
WHERE id = 1;

DELETE FROM students 
WHERE id =3;

--TCL
BEGIN TRANSACTION;
ROLLBACK;
COMMIT;

--DDL
ALTER TABLE students
ADD COLUMN anime TEXT;

UPDATE students
SET anime = 'drangonball'
WHERE id = 8;