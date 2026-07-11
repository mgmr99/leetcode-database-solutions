WITH cte as 
(select 
distinct 
d.name as Department,
e.name as Employee,
e.salary as Salary,
DENSE_RANK() OVER (PARTITION BY d.id order by salary desc) as rnk
from Employee e 
JOIN Department d
ON e.departmentId = d.id)
select distinct 
Department,
Employee,
Salary
from cte
where rnk<=3
;