# Write your MySQL query statement below


select 
    e.name as employee
from
    Employee e
    inner join Employee m on e.managerId = m.id and e.salary > m.salary ;