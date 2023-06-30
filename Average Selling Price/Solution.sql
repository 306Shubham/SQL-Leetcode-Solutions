/*******************************METHOD 1**************************************/
SELECT p.product_id, ROUND(SUM(p.price*u.units)/sum(u.units),2) AS average_price 
    FROM Prices p 
    LEFT JOIN UnitsSold u ON p.product_id=u.product_id 
    WHERE u.purchase_date>=p.start_date AND u.purchase_date<=p.end_date 
    GROUP BY product_id;




/*******************************METHOD 2*************************************/
WITH cte_prod_unit AS(
    SELECT p.product_id, p.price, u.units AS unit_sold, SUM(price * u.units) AS price_unit, SUM(u.units) AS unit_sum
    FROM Prices p
    JOIN UnitsSold u ON p.product_id = u.product_id
    WHERE u.purchase_date BETWEEN p.start_date AND p.end_date
    GROUP BY p.product_id
)

SELECT product_id, ROUND(price_unit / unit_sum, 2) AS average_price
    FROM cte_prod_unit;