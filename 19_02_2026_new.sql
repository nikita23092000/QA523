-- SELECT * FROM Students;

-- CREATE TABLE students_reserv(
-- id integer primary key AUTOINCREMENT,
-- firstname text,
-- lastname text,
-- nickname text,
-- birthdate date,
-- email text UNIQUE
-- );

-- INSERT INTO students_reserv select * FROM Students WHERE id BETWEEN 1 and 18;

-- для T-sql
-- SELECT * FROM students_reserv;

-- INSERT INTO students(firstname,lastname,nickname,
-- birthdate,email) VALUES ('Peter','Parker', 'Spider-Man', '2001-08-10','spidy01@gmail.com');
-- INSERT INTO students(firstname,lastname,nickname,
-- birthdate,email) VALUES ('Tony','Stark', 'Iron Man', '1970-05-29','tony70@gmail.com');

-- DELETE FROM Students WHERE id > 20;
UPDATE students set email='spidy13@gmail.com' WHERE firstname='Peter';
SELECT * FROM Students;