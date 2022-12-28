# Write your MySQL query statement below


select 
    product_id,
    product_name
from
    Product
where
    product_id in (
        select 
            product_id
        from
            Sales
        group by product_id
        having sum(
            case 
                when sale_date between '2019-01-01' and '2019-03-31' then 0
                else 1
            end
        ) = 0
    )