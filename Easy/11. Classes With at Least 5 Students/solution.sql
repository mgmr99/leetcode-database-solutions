select 
class
from Courses
group by 1
having count(distinct student) >=5;