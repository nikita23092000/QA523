-- SELECT*FROM Teachers;
-- SELECT*from GROUPS;
-- SELECT*FROM TeachersGroups;

SELECT T.id, firstname||'  '||lastname [fullname], birthdate, GroupName from 
Teachers T, GROUPS G, TeachersGroups TG WHERE T.Id=TG.TeachersId and G.Id=TG.GroupId;

SELECT T.id, firstname||'  '||lastname [fullname], birthdate, GroupName from 
Teachers T, GROUPS G, TeachersGroups TG WHERE T.Id=TG.TeachersId and G.Id=TG.GroupId and G.Id=1;

SELECT count(G.Id) [кол-во предметов] from 
Teachers T, GROUPS G, TeachersGroups TG WHERE T.Id=TG.TeachersId and G.Id=TG.GroupId and T.LastName='Davies';