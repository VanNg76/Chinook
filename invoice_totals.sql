SELECT
    i.total "Invoice Total", c.FirstName "Customer First Name", c.country "Customer Country",
    e.FirstName || " " || e.LastName "Sales Agent's full name"
FROM Invoice i
INNER JOIN 
    (Customer c INNER JOIN Employee e
        ON e.EmployeeId = c.supportRepId)
    c
        ON i.customerId = c.customerId
