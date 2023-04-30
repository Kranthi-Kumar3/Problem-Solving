# Write your MySQL query statement below

SELECT 
    eu.unique_id,
    e.name
FROM
    employees e
    left join employeeuni eu using (id) ;