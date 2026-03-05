SELECT * from Sales;

UPDATE Sales
SET price = price + 200
WHERE price BETWEEN 600 and 700;

select * from Sales;


UPDATE Sales
SET item = 3
WHERE price BETWEEN 200 AND 850;

SELECT * from Sales;

DELETE FROM Sales
WHERE item = 2;

SELECT * FROM Sales;