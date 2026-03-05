CREATE TABLE if not EXISTS Customers(
    id integer PRIMARY KEY AUTOINCREMENT,
    Surname text,
    city text

);

CREATE TABLE if not EXISTS Salesman(
    id integer PRIMARY KEY AUTOINCREMENT,
    Surname text,
    city text

);


create table if not exists Sales(
    id integer PRIMARY KEY AUTOINCREMENT,
    id_cust integer,
    id_salesman integer,
    product text,
    price decimal(10,2) 
);


insert into Customers(Surname, city) VALUES
('A', 'London'),
('B', 'Paris'),
('C', 'Paris'),
('D', 'Berlin');

insert into Salesman(Surname, city) VALUES
('A', 'Amsterdam'),
('B', 'Prague'),
('C', 'Paris'),
('D', 'Berlin');

insert into Sales(id_cust, id_salesman, product, price) VALUES
(1,3,'notebook', 1500),
(2,3,'tv',500),
(2,1,'tv',800),
(4,1,'smartphone',1000);