--DROP TABLE Students;
--SELECT * FROM Students;

--create index new_id_name on Students(firstname);
--drop INDEX new_id_name;



-- BEGIN TRANSACTION;
-- UPDATE Students SET nickname='potter_yashka5' WHERE id=1;
-- SELECT * FROM Students;
-- ROLLBACK;
-- SELECT nickname as НИК FROM Students;

--SELECT * FROM Students;
SELECT (firstname||' '||lastname) as ФИО FROM Students WHERE strftime('%m', birthdate)='12';
SELECT (firstname||' '||lastname) as ФИО FROM Students WHERE CAST (strftime('%m', birthdate)as integer)=12;
SELECT (firstname||' '||lastname) as ФИО,
 CAST(strftime('%Y.%m%d','now')-strftime('%Y.%m%d', birthdate) as int) as Возраст
 FROM Students WHERE Возраст>27 and strftime('%m', birthdate)='12';

-- работа с самой БД DDl
-- CREATE, ALTER, DROP

-- работа с таблицей(с данными) DML
-- SELECT, INSERT, UPDATE DELETE

--dcl защита
-- grant, revoke
