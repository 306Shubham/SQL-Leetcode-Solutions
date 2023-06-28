/******************************METHOD 1 - USING WITH CLAUSE*****************/
WITH cte_num_cnt AS (
    SELECT *
        FROM MyNumbers
        GROUP BY num
        HAVING count(num) = 1
)

SELECT MAX(num) as num
    FROM cte_num_cnt;
    
    
    
/*****************************METHOD 2 - USING SUBQUERY********************/
SELECT Max(num) AS num
    FROM  MyNumbers
    WHERE num IN (
        SELECT num
        FROM MyNumbers 
        GROUP BY num 
        HAVING count(num) = 1);