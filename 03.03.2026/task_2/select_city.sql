SELECT
    c.Surname AS customer_surname,
    s.Surname AS salesman_surname,
    sa.product,
    sa.price
FROM Sales sa 
JOIN Customers c ON sa.id_cust=c.id
JOIN Salesman s ON sa.id_salesman=s.id;