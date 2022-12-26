# Write your MySQL query statement below

/*
select employee_id from employees where name is null
union 
select employee_id from salaries where salary is null;
*/
select * from (
select e.employee_id 
from 
    employees e
    left join salaries s on e.employee_id = s.employee_id
where salary is null

union

select s.employee_id 
from 
    employees e
    right join salaries s on e.employee_id = s.employee_id
where name is null
    ) as tmp
order by employee_id