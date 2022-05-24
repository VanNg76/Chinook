SELECT p.Name "Playlist name", Count (*) "Number of Track"
FROM PlaylistTrack pt
JOIN Playlist p
    ON p.PlaylistId = pt.PlaylistId
GROUP BY p.PlaylistId

