-- like
-- Pattern Machting
SELECT * FROM customers
WHERE email LIKE '%@gmail.com'

SELECT * FROM customers
WHERE email NOT LIKE '%@gmail.com'

-- Find customers with phone number include 99
SELECT * FROM customers
WHERE phone LIKE '%99%';

-- Find customers firstname like 'John' etc.
SELECT * FROM customers
WHERE firstname LIKE 'J_hn';
