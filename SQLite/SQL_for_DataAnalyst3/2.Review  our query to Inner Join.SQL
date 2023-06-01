SELECT 
	Artists.artistid,
	artists.name,
	albums.Title
FROM artists,albums
WHERE artists.ArtistId = albums.ArtistId AND artists.name like 'C%';
-- เปลี่ยนเป็นการใช้ INNER JOIN
SELECT 
	Artists.artistid,
	artists.name,
	albums.Title
FROM artists inner 
JOIN albums on artists.ArtistId = albums.ArtistId
WHERE artists.name like 'C%';

-- Join 2 Tables
SELECT 
	Artists.artistid,
	artists.name as artist_name ,
	albums.Title as albums_name,
	tracks.name as tracks_name
FROM artists 
inner JOIN albums on artists.ArtistId = albums.ArtistId 
inner join tracks on albums.albumid = tracks.AlbumId 
WHERE artists.name like 'C%';
