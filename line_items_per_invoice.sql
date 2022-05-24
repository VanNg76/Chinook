SELECT
    InvoiceId,
    Count(*) "Number of invoice"
FROM InvoiceLine
GROUP BY InvoiceId