
SELECT "Sales Agent's full name", MAX("Total sale by employee")
FROM (SELECT
    e.FirstName || " " || e.LastName "Sales Agent's full name",
    SUM(i.Total) "Total sale by employee",
    strftime('%Y', i.InvoiceDate) "InvoiceYear"
FROM Employee e
JOIN Customer c
    ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
    ON c.CustomerId = i.CustomerId
WHERE InvoiceYear = "2009"
GROUP BY "Sales Agent's full name"
)
