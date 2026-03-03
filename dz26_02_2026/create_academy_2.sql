--Таблица "Кураторы"
create table if not exists Curators(
    Id integer primary key autoincrement,
    Name nvarchar(100) not null CHECK (Name != ''),
    Surname nvarchar(100) not null check (Surname != '')     
);

--Таблица Факультеты
CREATE TABLE if not EXISTS Faculties(
    Id integer PRIMARY KEY AUTOINCREMENT,
    Financing Real not null DEFAULT 0 CHECK (Financing >= 0),    
    Name nvarchar(100) NOT NULL UNIQUE CHECK(Name != '')
);

--Таблица "Кафедры"
-- CREATE TABLE if not EXISTS Departments(
--     Id integer PRIMARY KEY AUTOINCREMENT,
--     Financing Real not null DEFAULT 0 CHECK (Financing >= 0),
--     Name nvarchar(100) NOT NULL UNIQUE CHECK(Name != ''),
--     FacultyId integer,
--     FOREIGN KEY(FacultyId) REFERENCES Faculties(Id)
-- );

--Таблица "Группы"
create table if not exists Groups(
    Id integer PRIMARY KEY AUTOINCREMENT ,
    Name nvarchar(10) NOT NULL UNIQUE CHECK(Name!= ''),    
    Year integer NOT NULL CHECK (Year BETWEEN 1 and 5),
    DepartmentId integer,
    FOREIGN KEY(DepartmentId) REFERENCES Departments(Id)
);

--Таблица "Группы и кураторы"
create table if not exists GroupsCurators(
    Id integer primary key AUTOINCREMENT,
    CuratorId integer,
    GroupId integer,
    FOREIGN key(CuratorId) REFERENCES Curators(Id),
    FOREIGN key(GROUPId) REFERENCES GROUPS(Id)
    --Prymary Key (CuratorId,GroupId)

);

--Таблица "Дисциплины"
CREATE TABLE Subjects(
    Id integer primary key AUTOINCREMENT,
    Name nvarchar(100) not null UNIQUE CHECK (Name != '')
);

--Таблица "Преподаватели"
create table if not exists Teachers(
    Id integer PRIMARY KEY AUTOINCREMENT,
    Name nvarchar(100) not null CHECK (Name!= ''),
    Surname nvarchar(100) not null CHECK (Surname!= ''),
    Salary Real not null CHECK (Salary>0)
);

--Таблица "Лекции"
create table if not exists Lectures(
    Id integer PRIMARY key AUTOINCREMENT,
    LectureRoom nvarchar(100) not null CHECK(LectureRoom!= ''),
    SubjectId integer,
    TeacherId integer,
    FOREIGN KEY (SubjectId) REFERENCES Subjects(Id),
    FOREIGN KEY (TeacherId) REFERENCES Teachers(Id)
    --Prymary Key (SubjectId, TeacherId)
    
);

--Таблица "Группы и лекции"
create table if not exists GroupsLectures(
    Id integer primary key AUTOINCREMENT,
    GroupId integer,
    LectureId integer,    
    FOREIGN key(GROUPId) REFERENCES GROUPS(Id),
    FOREIGN key(LectureId) REFERENCES Lectures(Id)    
    --Prymary Key (GroupId, LectureId)
);

insert into Faculties(Financing, Name) VALUES
(100000.0, 'Факультет информационных технологий'),
(80000.0, 'Экономический факультет'),
(90000.0, 'Юридический факультет'),
(75000.0, 'Медицинский факультет'),
(85000.0, 'Гуманитарный факультет');

-- insert into Departments(Financing,Name, FacultyId) VALUES
-- (20000.0, 'Кафедоа программирования',1),
-- (18000.0, 'Кафедоа экономики',2),
-- (22000.0, 'Кафедоа уголовного права',3),
-- (25000.0, 'Кафедоа хирургии',4),
-- (19000.0, 'Кафедоа филологии',5);

insert into GROUPS (Name, Year, DepartmentId) VALUES
('ИТ-101',3,1),
('ЭК-201',2,2),
('ЮР-301',4,3),
('МЕД-401',5,4),
('ГУМ-102',1,5);

insert into Curators(Name, Surname) VALUES
('Анна', 'Иванова'),
('Пётр', 'Силоров'),
('Мария', 'Петрова'),
('Алексей', 'Николаев'),
('Елена', 'Козлова');

insert into GroupsCurators(CuratorId, GroupId) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

insert into Subjects(Name) VALUES
('Программирование на Python'),
('Макроэкономика'),
('Уголовное право'),
('Оперативная хирургия'),
('История русского языка');

insert into Teachers(Name, Surname, Salary) VALUES
('Дмитрий','Смирнов',50000.0),
('Ольга','Васильева',45000.0),
('Игорь','Фёдоров',48000.0),
('Татьяна','Морозова',52000.0),
('Сергей','Волков',47000.0);

insert into Lectures(LectureRoom, SubjectId, TeacherId) VALUES
('Аудитория 301',1,1),
('Аудитория 205',2,2),
('Аудитория 410',3,3),
('Лаборатория 1',4,4),
('Аудитория 103',5,5);

insert into GroupsLectures(GroupId, LectureId) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);