SELECT a.title "Album title", m.name "MediaType name", g.name "Genre name"
FROM Track t
JOIN Album a
    ON t.albumId = a.AlbumId
JOIN MediaType m
    ON t.mediaTypeId = m.MediaTypeId 
JOIN Genre g
    ON t.genreId = g.GenreId