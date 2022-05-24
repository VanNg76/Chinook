SELECT Country as "Top Country", (max("Total sales per country")) as "Total sales"
from (
SELECT BillingCountry as Country, Sum(Total) as "Total sales per country"
from Invoice
group by BillingCountry
)