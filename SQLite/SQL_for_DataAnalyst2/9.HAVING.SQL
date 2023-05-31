-- ใช้ HAVING ในการกรองข้อมูลที่ผ่านการ GROUP BY มาแล้วนะ
select 
	genres.name ,
	COUNT(*) AS COUNT_SONG
FROM genres , tracks
WHERE genres.GenreId = tracks.GenreId 
GROUP BY genres.name
HAVING COUNT_SONG >= 100 ;

--ถ้าต้องไม่ต้องการเพลง Rock 
select 
	genres.name ,
	COUNT(*) AS COUNT_SONG
FROM genres , tracks
WHERE genres.GenreId = tracks.GenreId   AND genres.name <> 'Rock'
GROUP BY genres.name
HAVING COUNT_SONG >= 100 ;
