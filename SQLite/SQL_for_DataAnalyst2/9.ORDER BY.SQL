select 
	genres.name ,
	COUNT(*) AS COUNT_SONG
FROM genres , tracks
WHERE genres.GenreId = tracks.GenreId   AND genres.name <> 'Rock'
GROUP BY genres.name
HAVING COUNT_SONG >= 100 
ORDER by count(*) DESC --Limit 4
