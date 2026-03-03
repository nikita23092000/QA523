-- select*from Students;
-- SELECT*FROM Groups;

SELECT S.id, firstname||'  '||lastname [name], birthdate,email,nickname,GroupName 
FROM Students S, Groups G WHERE G.id=S.GroupID;
