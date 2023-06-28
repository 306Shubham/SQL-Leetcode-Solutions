/******************************METHOD 1************************************/
SELECT class
    FROM Courses
    GROUP BY class
    having COUNT(DISTINCT student) >= 5;
    
    
    
/*****************************METHOD 2 - USING WITH CLAUSE*****************/
WITH cte_class_cnt AS(
#   SELECT class, count(class) AS class_cnt
#     FROM Courses
#     GROUP BY class
# )

# SELECT class
#     FROM cte_class_cnt 
#     WHERE class_cnt >= 5;