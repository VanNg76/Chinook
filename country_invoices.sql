SELECT BillingCountry Country, Count (*) "Number of invoice by Country"
FROM Invoice
GROUP BY BillingCountry
order by BillingCountry DESC