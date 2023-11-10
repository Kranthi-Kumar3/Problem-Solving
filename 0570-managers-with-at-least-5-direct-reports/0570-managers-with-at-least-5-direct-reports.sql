# Write your MySQL query statement below

select 
    m.name
from
    Employee e
    inner join Employee m on e.managerId = m.id
group by m.id having count(*) >=5 
;    