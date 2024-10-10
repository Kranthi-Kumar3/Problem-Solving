/* Write your T-SQL query statement below */

select contest_id, round(count(r.user_id)*100.0/(select count(user_id) from Users), 2) as percentage 
from Register R 
group by contest_id
order by percentage desc, contest_id asc