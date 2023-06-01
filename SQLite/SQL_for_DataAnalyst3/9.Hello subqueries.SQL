-- Subqueries คือการเขียน SELECT ซ้อน SELECT อีกที 

-- basic subqueries in WHERE clause
SELECT * FROM tracks 
WHERE milliseconds = (SELECT max(milliseconds) FROM tracks);

SELECT COUNT(*) FROM tracks 
WHERE milliseconds >= (SELECT AVG(milliseconds) FROM tracks);

-- another subqueries example in FROM clause
SELECT firstname, lastname, email
FROM (
		SELECT * FROM customers WHERE country = 'USA'
);
