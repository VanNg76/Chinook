SELECT
    e.FirstName || " " || e.LastName "Sales Agent's full name",
    i.InvoiceId
FROM Employee e
JOIN Customer c
    ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
    ON c.CustomerId = i.CustomerId
WHERE e.title LIKE '%sales%';



SELECT
    e.FirstName || " " || e.LastName "Sales Agent's full name",
    i.InvoiceId
FROM Customer c
JOIN Employee e
    ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
    ON c.CustomerId = i.CustomerId
WHERE e.title LIKE "%sales%"


SELECT e.FirstName || " " || e.LastName as "FullName",
    i.InvoiceId
FROM Employee e
    JOIN Customer c on c.SupportRepId = e.EmployeeId
    JOIN Invoice i on i.CustomerId = c.CustomerId