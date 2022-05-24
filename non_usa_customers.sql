SELECT
    c.CustomerId "Customer Id", c.FirstName "First name", c.LastName "Last name",
    c.FirstName || ' ' || c.LastName "Full name", c.Country
FROM Customer c
WHERE c.Country != "USA";
