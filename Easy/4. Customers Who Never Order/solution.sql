Select c.name as Customers
from Customers c
LEFT JOIN ORDERS o
ON 
c.id = o.customerId
where o.customerId is Null;