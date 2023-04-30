# Write your MySQL query statement below

SELECT
    p.product_name,
    s.year,
    s.price
FROM
    sales s
    INNER JOIN product p using(product_id)
GROUP BY
    s.product_id, s.year, s.price
ORDER BY p.product_name;