select email as Email
from Person  
group by 1
HAVING Count(*)>1;