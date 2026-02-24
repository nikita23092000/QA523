-- SELECT (firstname||' '||lastname) as [Ф И О], nickname, birthdate, email as Почта FROM Students WHERE
-- CAST(strftime('%m', birthdate)AS int)>=3 AND CAST(strftime('%m', birthdate)AS int)<=7;
--INSERT into students(firstname, lastname, birthdate, email) 
--VALUES ('peter','pen','1970-02-25','pp@gmail.com');
-- SELECT * from students;
-- select * from students where nickname is not null;
--SELECT * from students where firstname!='Никита';
--SELECT * from students where length(lastname)<7;
--SELECT * from Students WHERE not nickname='uspik';
-- select id,lastname,firstname, 
-- cast(strftime('%Y.%m%d', 'now')-strftime('%Y.%m%d',birthdate)as int) 
-- Возраст, email FROM Students order BY Возраст;
-- select id,lastname,firstname, 
-- cast(strftime('%Y.%m%d', 'now')-strftime('%Y.%m%d',birthdate)as int) 
-- Возраст, email FROM Students order BY Возраст ASC;
-- select id,lastname,firstname, 
-- cast(strftime('%Y.%m%d', 'now')-strftime('%Y.%m%d',birthdate)as int) 
-- Возраст, email FROM Students order BY Возраст DESC;

-- SELECT * FROM Students order BY lastname desc, 
-- firstname asc;
-- delete from Students where firstname='peter';
-- SELECT * FROM Students;
--SELECT * from Students where firstname='Никита' or firstname='Николай';
-- SELECT * from Students WHERE firstname in ('Никита', 'Николай','Анна');

-- SELECT id, firstname,nickname,
-- cast(strftime('%Y.%m%d', 'now')-strftime('%Y.%m%d',birthdate)as int)age,email 
-- from Students WHERE firstname in ('Никита', 'Николай','Анна') order BY age;

-- SELECT id, firstname,lastname,
-- max(cast(strftime('%Y.%m%d', 'now')-strftime('%Y.%m%d',birthdate)as int))
-- as maxage from Students;

-- select * from Students WHERE birthdate BETWEEN '2001-03-01' and '2010-01-01';
-- select * from Students WHERE lastname not BETWEEN 'А' and 'Л';
/*% — соответствует любой последовательности сим-
волов от 0 и более;
■ _ — представляет любой одиночный символ;
■ [] — задает последовательность или диапазон воз-
можных символов;
■ [^] — задает последовательность или диапазон сим-
волов, которые должны отсутствовать.*/
-- select * from Students WHERE nickname like 'lis%';
-- SELECT * from students WHERE firstname LIKE '%на%';
-- select * from Students where firstname like '_н%';
-- select * from Students where firstname like '__н%';
-- glob для sqlite * соответствует любой последовательности сим-
-- волов от 0 и более, [a-zA-Z0-9],[А-Я,а-я0-9]
SELECT * from Students WHERE lastname GLOB '[А-Л]*';
SELECT * FROM Students WHERE lastname GLOB '[^А-Л]*';

















--DELETE From Students WHERE id BETWEEN 19 and 20;