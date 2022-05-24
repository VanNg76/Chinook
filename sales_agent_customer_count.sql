SELECT 
    e.FirstName || " " || e.LastName "Sales Agent's full name",
    Count (*) "Number of customer"
FROM Employee e
JOIN Customer c
    ON c.supportRepId = e.employeeId
GROUP BY "Sales Agent's full name"