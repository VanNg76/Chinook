SELECT
    c.FirstName || ' ' || c.LastName "Full name",
    i.InvoiceId "Invoice Id",
    i.InvoiceDate "Date of the invoice",
    i.BillingCountry "Billing country"
FROM Customer c
JOIN Invoice i
    ON i.CustomerId = c.customerId
WHERE c.Country = "Brazil"
