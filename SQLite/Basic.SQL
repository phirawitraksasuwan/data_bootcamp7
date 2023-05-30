-- COMBIND
SELECT 
	firsname || " " || lastname AS Fullname
FROM customers
-- CALCULATE , limit
SELECT 
	name ,
    round(milliseconds/60000.0,2) 	as minute,
		    bytes/(1024*1024) 					as mb
FROM tracks 
limit 10;
-- WHERE
--1
SELECT 
	firstname,
	country,
	email
FROM customers
WHERE country IN ('USA, 'Unoted Kingdom' , 'France' , 'Italy');
--2
SELECT 
	firstname,
    country,
    email
from customers 
-- WHERE 
customerid >= 1 AND customerid <= 5 
where customerid BETWEEN 1 and 5 ;  --มีค่าเท่ากัน
--03
SELECT *
FROM table_name
WHERE column1 = 'value1' AND column2 > 1000 OR column2 < 50; 
-- LOWER & UPPER
SELECT 
	*
FROM customers 
 WHERE LOWER(country) = 'brazil' ;
-- LIKE
SELECT 
	*
FROM customers 
WHERE firstname LIKE 'Lu%' ; --pattern matching
-- STRFTIME แยก data time ออกจาก String 
select
		STRFTIME('%Y' , invoicedate) AS year ,
		STRFTIME('%m' , invoicedate) AS month ,
    STRFTIME('%d' , invoicedate) AS day
FROM invoices ; 
-- CAST เปลี่ยนเป็น Type ที่ต้องการ
select
	STRFTIME('%Y%m' , invoicedate) AS monthid 
FROM invoices 
where CAST(monthid AS integer) = 200909 ;
-- Subqueries
select
	*
from (SELECT 
     		 firstname , lastname ,country
      		from customers)
where country = 'USA' ;
-- JOIN
SElECT * FROM Table1
JOIN Table2 ON Table1.PK = Table2.
-- Aggregate_Funtions
SELECT 
	count(*) as no_tracks	  , 
    avg(tr.bytes) as avg_bytes	,
    sum(bytes)	as sum_bytes  ,
    min(bytes)	as min_bytes   ,
    max(bytes) as max_bytes  
from artists	  as ar
join albums 	  as al  on ar.ArtistId  = al.ArtistId 
JOIN tracks 	  as tr  on al.albumid	 = tr.AlbumId
join genres    	as ge  on tr.genreid	 = ge.GenreId
-- having ( filter_of_Group By )
SELECT 
	ge.GenreId,
	ge.name,
	count(*) as no_tracks	  , 
    avg(tr.bytes) as avg_bytes	,
    sum(bytes)	as sum_bytes  ,
    min(bytes)	as min_bytes   ,
    max(bytes) as max_bytes  
from artists	 as ar
join albums 	as al ON ar.ArtistId     = al.ArtistId 
JOIN tracks 	  as tr  on al.albumid	 = tr.AlbumId
join genres    	as ge on tr.genreid		= ge.GenreId
group BY ge.GenreId ,ge.name
HAVING ge.Name like 's%'
ORDER by no_tracks desc
