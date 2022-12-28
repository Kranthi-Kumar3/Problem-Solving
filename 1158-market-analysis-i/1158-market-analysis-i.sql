# Write your MySQL query statement below

# with orders_2019 as (
#     select 
#         order_id, 
#         year(order_date) as year_order, 
#         buyer_id
#     from Orders
#     where year(order_date) = 2019
# )

# select
#     u.user_id as buyer_id,
#     u.join_date,
#     ifnull(count(o.order_id), 0) as orders_in_2019
# from
#     Users u
#     left join orders_2019 o on u.user_id = o.buyer_id
# group by u.user_id ;


select
    u.user_id as buyer_id,
    u.join_date,
    ifnull(count(o.order_id), 0) as orders_in_2019
from
    Users u
    left join Orders o on u.user_id = o.buyer_id and year(order_date) = 2019
group by u.user_id ;