# Write your MySQL query statement below


select 
    activity_date as day,
    count(distinct user_id) as active_users
from
    activity
where 
    activity_date between date_sub('2019-07-27', interval 29 day) and '2019-07-27'
group by activity_date
order by activity_date ;

# SELECT 
#     activity_date AS day ,
#     COUNT(DISTINCT user_id) AS active_users
# FROM Activity
# WHERE DATEDIFF('2019-07-27' , activity_date) between 0 and 29   
# GROUP BY activity_date;

