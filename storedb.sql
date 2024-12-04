--customers table
CREATE TABLE customers( 
	cust_id SERIAL PRIMARY KEY,
	cust_name VARCHAR(100) NOT NULL
);

--orders table
CREATE TABLE orders(
	ord_id SERIAL PRIMARY KEY,
	ord_date DATE NOT NULL,
	price NUMERIC NOT NULL,
	cust_id INTEGER NOT NULL,
	FOREIGN KEY(cust_id) REFERENCES customers(cust_id)
);

--add data into customers
INSERT INTO customers (cust_name) VALUES ('Raju'),('Sham'),('Paul'),('Alex');

--insert data into orders 
INSERT INTO orders(ord_date,cust_id,price) VALUES
('2024-01-01',1,250.00),
('2024-01-15',1,350.00),
('2024-02-01',2,150.00),
('2024-03-01',3,450.00),
('2024-04-04',2,550.00);

--Joins
--cross join
SELECT * FROM customers CROSS JOIN orders;

--inner join
SELECT * FROM customers c INNER JOIN orders o ON c.cust_id = o.cust_id ;

--inner joing with group by (total order by a person)
SELECT c.cust_name, count(o.ord_id) 
FROM customers c
INNER JOIN orders o 
ON c.cust_id = o.cust_id 
GROUP BY (c.cust_name);

-- above query but also show sum of amount spend
SELECT c.cust_name, count(o.ord_id), sum(o.price)
FROM customers c
INNER JOIN orders o
ON c.cust_id = o.cust_id
GROUP BY (c.cust_name);

--left join
SELECT * FROM customers c
LEFT JOIN orders o
ON c.cust_id = o.cust_id;

--right join 
SELECT * FROM customers c
RIGHT JOIN orders o
ON c.cust_id = o.cust_id;

SELECT * FROM orders o
RIGHT JOIN customers c
ON c.cust_id = o.cust_id;

-- select for viewing tables
SELECT * FROM customers;
SELECT * FROM orders;


