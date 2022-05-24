select Track as "Top track Id", max("Total sales of track") as "Top sales"
from(
SELECT
    strftime('%Y', i.InvoiceDate) "InvoiceYear",
    sum(i.total) "Total sales of track",
    t.trackId as Track

FROM InvoiceLine il
JOIN Track t
    ON il.trackId = t.trackId
JOIN Invoice i
    ON i.InvoiceId = il.InvoiceId

WHERE InvoiceYear = "2009"
GROUP BY il.trackId
)