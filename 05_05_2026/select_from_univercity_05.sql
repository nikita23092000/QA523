SELECT GroupName,Count(*) [кол-во студентов] FROM GROUPS as
G, Students S WHERE G.id=S.GroupId
group by GroupName;

SELECT GroupName,Count(*) [кол-во студентов] FROM GROUPS as
G, Students S WHERE G.id=S.GroupId
group by GroupName HAVING count(S.GroupId)>=2;


SELECT GroupName,Count(*) [кол-во студентов] FROM GROUPS as
G, Students S WHERE G.id=S.GroupId
group by GroupName HAVING count(S.GroupId)>=2 ORDER BY [кол-во студентов] DESC;

SELECT FirstName||' '||LastName as FullName, Grants FROM Students group by FullName,Grants 
HAVING AVG(Grants)<=1200;


select FirstName,LastName FROM Students group by LastName,FirstName 
HAVING LastName in ('Moore', 'Thomas','Brom');


-- SELECT min(LastName) as [Самая короткая фамилия] FROM Students HAVING AVG(Grants)>1100;

-- шаблон
-- SELECT columnName1, columnName2, ...
-- FROM tableName
-- [WHERE condition]
-- [GROUP BY columnName1, columnName2, ...]
-- HAVING condition
-- [ORDER BY columnName1 ASC | DESC, ...];

-- select count(--),Column from Table(s) where -- group by Column having ---;

-- select count(*) as [Кол-во преподавателей старше 40] From teachers where