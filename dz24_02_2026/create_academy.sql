create table if not exists Groups(
    Id integer PRIMARY KEY AUTOINCREMENT ,
    Name nvarchar(10) NOT NULL UNIQUE CHECK(Name!= ''),
    Raiting integer NOT NULL,
    Year integer NOT NULL
);

-- CREATE TABLE if not EXISTS Departments(
--     Id integer PRIMARY KEY AUTOINCREMENT,
--     Financing DECIMAL(15, 2) NOT NULL DEFAULT 0,
--     Name nvarchar(100) NOT NULL UNIQUE CHECK(Name != '')
-- );

-- CREATE TABLE if not EXISTS Faculties(
--     Id integer PRIMARY KEY AUTOINCREMENT,    
--     Name nvarchar(100) NOT NULL UNIQUE CHECK(Name != '')
-- );

-- CREATE TABLE if not EXISTS Teachers(
--     Id integer PRIMARY KEY AUTOINCREMENT, 
--     EmploymentDate DATE NOT NULL,   
--     Name nvarchar(255) NOT NULL UNIQUE CHECK(Name != ''),
--     Premium DECIMAL(15,2) NOT NULL DEFAULT 0 CHECK (Premium >=0),
--     Salary DECIMAL(15,2) NOT NULL,
--     Surname nvarchar(255) NOT NULL UNIQUE CHECK(Surname != '')
-- );

-- insert into Faculties(Name) VALUES
-- ('Факультет информатики'),
-- ('Экономический факультет'),
-- ('Юридический факультет');

-- insert into Departments (Name, Financing) VALUES
-- ('Кафедра программирования',100000),
-- ('Кафедра экономики', 80000),
-- ('Кафедра права', 75000);

-- insert into Groups(Name, Raiting, Year) VALUES
-- ('И-101', 85, 1),
-- ('Э-201', 90, 2),
-- ('Ю-301', 75, 3);

-- insert into Teachers(EmploymentDate, Name,Premium,Salary,Surname) VALUES
-- ('2020-09-01', 'Иван',5000,45000,'Петров'),
-- ('2019-08-15', 'Мария',7000,50000,'Сидорова'),
-- ('2021-01-10', 'Алексей',0,40000,'Иванова');


