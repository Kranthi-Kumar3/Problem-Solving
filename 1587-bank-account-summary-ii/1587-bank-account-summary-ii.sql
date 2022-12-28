# Write your MySQL query statement below

select
    u.name,
    sum(t.amount) as balance
from
    Users u
    inner join Transactions t using(account)
group by u.name
having sum(t.amount) > 10000 ;