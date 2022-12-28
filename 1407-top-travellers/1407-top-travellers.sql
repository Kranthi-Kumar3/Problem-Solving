# Write your MySQL query statement below



The group by should be faster. The row number has to assign a row to all rows in the table. It does this before filtering out the ones it doesn't want.

The second query is, by far, the better construct. In the first, you have to be sure that the columns in the partition clause match the columns that you want. More importantly, "group by" is a well-understood construct in SQL. I would also speculate that the group by might make better use of indexes, but that is speculation.


select 
    u.name,
    coalesce(sum(distance), 0) as travelled_distance
from
    users u
    left join rides r on u.id = r.user_id
group by u.id
order by travelled_distance desc, name asc ;