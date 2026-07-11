WITH cte as
(select 
d.name as Department,
e.name as Employee,
e.salary as Salary,
DENSE_RANK() OVER (PARTITION BY d.name order by e.salary desc) as rnk 
from Employee e
JOIN Department d
ON e.departmentId = d.id)
select 
Department,
Employee,
Salary from cte where rnk =1;