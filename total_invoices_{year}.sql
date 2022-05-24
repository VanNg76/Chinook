
SELECT
    strftime('%Y', InvoiceDate) "Invoice Year",
    Count(*) "Number of Invoice"
FROM Invoice
GROUP BY "Invoice Year"
HAVING "Invoice Year" = "2009" OR "Invoice Year" = "2011";


SELECT strftime('%Y', InvoiceDate) as Year,
    COUNT(*) as InvoiceCount
FROM Invoice
WHERE strftime('%Y', InvoiceDate) = '2009'
    OR strftime('%Y', InvoiceDate) = '2011'
GROUP BY strftime('%Y', InvoiceDate);
