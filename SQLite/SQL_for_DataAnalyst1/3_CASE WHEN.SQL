-- เเสดงทับ column เดิม
SELECT 
	Company,
	CASE
		WHEN Company is not null THEN 'Corporate'
		ELSE 'END customers'
	END
FROM customers
-- สร้าง column region
SELECT 
  country,
  CASE
    WHEN country IN ('Canada', 'USA') THEN 'America'
    WHEN country IN ('Belgium', 'France', 'Italy') THEN 'Europe'
    ELSE 'Other'
  END AS region
FROM customers
