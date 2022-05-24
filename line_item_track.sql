SELECT il.InvoiceLineId, t.name "Track name"
FROM InvoiceLine il
JOIN Track t
    ON il.trackId = t.trackId
