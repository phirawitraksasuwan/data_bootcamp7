select 
	FirstName, 
	LastName,
	FirstName || ' ' || LastName,
	Country
FROM customers;
---------------------------------
select 
	name,
	round(Milliseconds/6000.0, 2),  --หารด้วย.0 คืออยากมีทศนิยม
	round(Bytes/(1024*1024.0), 2),  -- ใส่ ROUND คือกำหนดจำนวนเลขทศนิยม
	Bytes/(1024*1024.0),
	Bytes/(1024*1024)               -- เป็นจำนวนเต็ม
FROM tracks;
