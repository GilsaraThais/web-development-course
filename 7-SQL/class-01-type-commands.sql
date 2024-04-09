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
VALUES ('Gohan', '094.454.593-03', 25);