--IN Operation Qurry
-- OR 
SELECT * FROM customers
WHERE country = 'USA' OR country = 'Canada' OR country = 'Belgium' ;

-IN 
SELECT * FROM customers
WHERE country IN ('USA', 'Canada', 'Belgium');

--NOT IN
SELECT * FROM customers
WHERE country NOT IN ('USA', 'Canada', 'Belgium');

--BETWEEN AND Operation 
SELECT * FROM customers
WHERE customerID BETWEEN 5 AND 10; -- inclusive
-- =
SELECT * FROM customers 
WHERE customerID >= 5 AND customerID <= 10;

--BETWEEN AND with DATE TIME
SELECT * FROM invoices
WHERE invoicedate BETWEEN '2009-01-01 00:00:00' AND '2009-01-31 20:00:00';

--Null ,  NOT Null
SELECT * FROM customers
WHERE company IS NULL;
SELECT * FROM customers
WHERE company IS NOT NULL;
