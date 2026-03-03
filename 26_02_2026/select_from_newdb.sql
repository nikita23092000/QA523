-- select*from Teachers;
-- SELECT*from Groups;

SELECT Teachers.id as [Айди Препода], 
FirstName, LastName,BirthDate,GroupName,FacultyId 
from teachers,groups WHERE teachers.GroupID=Groups.id;
