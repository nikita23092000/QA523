create table if not exists Sales(
    id integer primary key autoincrement,
    item integer,
    price decimal(10,2),
    sale_date Date

);

insert into Sales(item, price, sale_date) VALUES
(1,200,'2021-02-01'),
(1,210,'2021-06-11'),
(1,225,'2021-06-27'),
(1,250,'2021-08-01'),
(2,600,'2021-02-10'),
(2,650,'2021-04-21'),
(2,675,'2021-06-17'),
(2,700,'2021-07-23');