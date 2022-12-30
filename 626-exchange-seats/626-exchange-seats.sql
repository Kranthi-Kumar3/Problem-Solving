# Write your MySQL query statement below

with swap_stu as 
(
select
    id,
    student,
    lead(student) over(order by id) as lead_stu,
    lag(student) over(order by id) as lag_stu
from seat
order by id
)

select
    id,
    if(
        id%2 = 1, 
        if(
            id = (select max(id) from seat), 
            student, 
            lead_stu
        ) , 
        lag_stu
    ) as student
    # case 
    #     when id%2 = 1 and  then student
    #     when id%2 = 1 then lead_stu
    #     else lag_stu
    # end as student
from swap_stu 
order by id ;

# select * from seat where id != (select max(id) from seat);