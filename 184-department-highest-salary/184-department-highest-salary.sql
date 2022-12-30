# Write your MySQL query statement below

with dept_max_sal as (
SELECT departmentId, MAX(SALARY) as salary
from employee
group by departmentId )

select
    d.name as Department,
    e.name as Employee,
    #max(e.salary) over(partition by e.departmentId order by e.salary desc) as Salary
    e.salary as Salary
from 
    employee e
    inner join department d on e.departmentId = d.id
    inner join dept_max_sal dms on dms.departmentId = e.departmentId
where e.salary = dms.salary
