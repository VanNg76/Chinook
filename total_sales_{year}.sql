SELECT
    strftime('%Y', InvoiceDate) "InvoiceYear",
    SUM(Total) "Total invoice"
FROM Invoice
GROUP BY InvoiceYear
HAVING InvoiceYear LIKE "2009" OR InvoiceYear LIKE "2011";


SELECT strftime('%Y', InvoiceDate) as Year,
    SUM(TOTAL) as YearlyTotal
FROM Invoice
WHERE strftime('%Y', InvoiceDate) = '2009'
    OR strftime('%Y', InvoiceDate) = '2011'
GROUP BY strftime('%Y', InvoiceDate)