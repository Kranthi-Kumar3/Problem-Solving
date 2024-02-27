/* Write your T-SQL query statement below */

select
    query_name,
    round(avg(rating*1.0/position), 2) as quality,
    round(sum(case when rating < 3 then 1 else 0 end)*1.0/(count(*)) * 100, 2) as poor_query_percentage
from Queries
where query_name is not null
group by query_name
