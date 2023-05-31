SELECT 
	artists.ArtistId,
	artists.name,
	albums.Title,
	tracks.name,
	tracks.Composer
FROM artists
Inner JOIN albums 
on artists.ArtistId = albums.ArtistId
INNER join tracks
on  albums.AlbumId = tracks.AlbumId
