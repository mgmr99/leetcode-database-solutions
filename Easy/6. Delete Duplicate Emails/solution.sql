WITH cte as
(
select 
*, 
DENSE_RANK() OVER(PARTITION BY email order by id asc) as rnk
from 
Person)
delete from Person
where id IN 
(
    select id from cte where rnk > 1
);