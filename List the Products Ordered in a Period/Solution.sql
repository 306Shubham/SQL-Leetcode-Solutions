SELECT
    p.product_name, SUM(unit) as unit
FROM
    Products p
JOIN 
    Orders o ON p.product_id = o.product_id
WHERE
    order_date >= '2020-02-01' AND order_date <= '2020-02-29'
GROUP BY
    p.product_name
HAVING 
    unit >= 100;