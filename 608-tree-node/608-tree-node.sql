# Write your MySQL query statement below

select 
    distinct n1.id,
    case 
        when n1.p_id is null then 'Root'
        when n1.p_id is not null and n2.p_id is not null then 'Inner'
        else 'Leaf'
    end as type
from 
    tree n1
    left join tree n2 on n1.id = n2.p_id