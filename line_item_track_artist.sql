SELECT il.InvoiceLineId, t.name "Track name", a.name "Artist name"
FROM InvoiceLine il
JOIN Track t
    ON il.trackId = t.trackId
JOIN Album al
    ON al.AlbumId = t.albumId
JOIN Artist a
    ON a.ArtistId = al.artistId