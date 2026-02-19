-- SELECT * FROM Teachers;

-- SELECT name, cast(strftime('%Y', 'now')-strftime('%Y',BirthDate) as integer)+10
-- as [age plus 10] FROM Teachers;

-- SELECT * FROM Teachers LIMIT 4;

-- SELECT count(*) FROM Teachers;

SELECT DISTINCT Name FROM Teachers;

SELECT * FROM Teachers WHERE length(Subject)>4;
-- >,<,>=,<=,!=,=,<>
SELECT * FROM Teachers WHERE CAST(strftime('%m', BirthDate) as integer)>=5 
and CAST (strftime('%m', BirthDate) as integer)<=11;

SELECT * FROM Teachers WHERE CAST(strftime('%m', BirthDate) as integer)%2!=0;

SELECT * FROM Teachers WHERE Subject is 'ITE1';
SELECT * FROM Teachers WHERE Subject is NOT 'ITE1';
SELECT * FROM Teachers WHERE NOT Subject='C#';