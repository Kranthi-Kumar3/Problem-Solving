# Write your MySQL query statement below

with rank_salary as (
    select 
        departmentId ,
        name,
        salary,
        dense_rank() over(partition by departmentId order by salary desc) as sal_rank
    from
        Employee
)

select
    d.name as Department,
    rs.name as Employee,
    rs.salary as Salary
from
    rank_salary rs
    inner join department d on rs.departmentId  = d.id
where rs.sal_rank in (1,2,3) ;