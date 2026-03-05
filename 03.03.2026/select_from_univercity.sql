-- SELECT * FROM Teachers;
-- SELECT * from Students;
select * from Groups;
-- SELECT * from Subjects;
-- SELECT * from Teachers_Subjects;
-- SELECT * FROM Achievements;


select T.id,T.firstname||' ' ||T.lastname name, T.birthdate [Teachers BirthDate],
 S.Name as [Subject Name],ST.firstname||' '||ST.lastname [Student Name],
 ST.Birthdate [Student BirthDate],ST.Grants [Student Grant],ST.Email [Student Email],Assesment from Teachers  T,
 Teachers_Subjects TS,
 Subjects S, Students ST,Achievements A where
  TS.TeachersId=T.id and TS.SubjectId=S.id and A.SubjectId=S.id and ST.Id=A.StudentId;

SELECT count(*) as [кол-во студентов] FROM Students;
SELECT count(Grants) as [кол-во стипендий] FROM Students;
SELECT count(DISTINCT Grants) [кол-во уникальных стипендий]
FROM Students;

SELECT avg(Grants) as [средняя стипендия] From Students;
SELECT sum(Grants)/count(Grants) as [средняя стипендия] FROM Students;
SELECT sum(Grants) [общая сумма стипендии] FROM Students;
SELECT max(Grants) [максимальная стипендия] from Students;
SELECT min(Grants) [минимальная стипендия] from Students;
SELECT avg(cast(strftime('%Y','now')-strftime('%Y', BirthDate)
as integer)) [средний возраст преподавателя] FROM Teachers;

SELECT FacultyId, Count(GroupName) as [кол-во групп на факультете] from Groups group by FacultyId; 

SELECT T.FirstName||' '||T.LastName [ФИО Преподавателя], count(S.FirstName) [кол-во студентов у преподавателя] from Teachers T, Teachers_Subjects TS, Subjects Sub,Achievements A, Students S WHERE T.Id=TS.TeachersId and
TS.SubjectId=Sub.id and Sub.id=A.SubjectId=S.id and A.Studentid=S.id group by [ФИО Преподавателя];

SELECT FacultyId, Count(GroupName) as [кол-во групп на факультете] from Groups group by FacultyId HAVING count(GroupName)>1; 

-- SELECT count(*) as [Кол-во преподаватеоей старше 40] FROM Teachers WHERE

-- select count(--),Column from Table(s) where -- group by Column having ---;

-- select count(*) as [Кол-во преподавателей старше 40] From teachers where