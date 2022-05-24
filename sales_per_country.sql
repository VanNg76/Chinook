SELECT BillingCountry as Country, Sum(Total) as "Total sales per country"
from Invoice
group by BillingCountry