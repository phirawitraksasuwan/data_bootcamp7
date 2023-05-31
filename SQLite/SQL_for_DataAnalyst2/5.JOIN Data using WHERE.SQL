--เรียกข้อมูล
SELECT  * FROM artists , albums
WHERE artists.artistid = albums.artistid ;
--Inner Join 
SELECT  * FROM artists JOIN albums
ON artists.artistid = albums.artistid;

--ทั้งสองตัวอย่าง มีผลลัพธ์เหมือนกัน

--Ex.
SELECT  
	artists.ArtistId ,
	artists.Name as Artists_Name,
	albums.Title as albums_Name
FROM artists , albums
WHERE artists.artistid = albums.ArtistId --PK = FK 
	AND artists.ArtistId in (8 ,100 ,120 ); 
--BETWEEN 6 AND 10 ใช้กรณีจากขอบเขตนึงไปขอบเขตนึง
