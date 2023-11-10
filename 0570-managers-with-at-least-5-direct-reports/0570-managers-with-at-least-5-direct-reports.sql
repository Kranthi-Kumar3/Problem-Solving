# Write your MySQL query statement below

select name from Employee where id in (
select 
    m.id
from
    Employee e
    inner join Employee m on e.managerId = m.id
group by m.id having count(*) >=5 
);    