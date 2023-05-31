-- "USA"
WHERE LOWER(country) = 'usa' 

-- AND OR NOT

SELECT * FROM customers
WHERE country = 'USA' AND state = 'CA';

SELECT * FROM customers
WHERE country = 'USA' OR country = 'Canada';

SELECT * FROM customers 
WHERE NOT (country = 'USA' OR country = 'Canada');
