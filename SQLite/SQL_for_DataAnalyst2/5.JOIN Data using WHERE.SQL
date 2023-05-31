--เรียกข้อมูล
SELECT  * FROM artists , albums
WHERE artists.artistid = albums.artistid ;
--Inner Join 
SELECT  * FROM artists JOIN albums
ON artists.artistid = albums.artistid;

--ทั้งสองตัวอย่าง มีผลลัพธ์เหมือนกัน
