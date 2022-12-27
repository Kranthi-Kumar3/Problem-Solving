# Write your MySQL query statement below

# select tmp.id
# from 
#     (
#         select
#             id, 
#             recordDate,
#             temperature,
#             lag(recordDate) over(order by recordDate) as prev_day,
#             lag(temperature) over(order by recordDate) as prev_temp
#         from weather
#         order by recordDate
#     ) as tmp
# where 
#     tmp.temperature is not null 
#     and date_sub(tmp.recordDate, interval 1 day) = prev_day
#     and tmp.temperature > tmp.prev_temp;


select today.id
from
    weather today
    inner join weather yesterday on datediff(today.recordDate, yesterday.recordDate) = 1
where today.temperature > yesterday.temperature;