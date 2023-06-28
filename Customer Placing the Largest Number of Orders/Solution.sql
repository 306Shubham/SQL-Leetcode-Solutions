/******************************METHOD 1************************************/
SELECT customer_number 
    FROM Orders
    GROUP BY customer_number
    ORDER BY count(customer_number) DESC
    LIMIT 1;
    
    
    
/*****************************METHOD 2 - USING WITH CLAUSE*****************/
WITH cust_cnt_cte as(
    SELECT customer_number, count(*) AS cust_count
    FROM Orders
    GROUP BY customer_number
)

SELECT customer_number
    FROM cust_cnt_cte
    ORDER BY cust_count DESC
    LIMIT 1;