/******************************METHOD 1 - USING JOIN************************************/
SELECT W1.id AS ID
    FROM Weather W1
    JOIN Weather W2 ON W1.recordDate = DATE_ADD(W2.recordDate, INTERVAL 1 DAY)
    AND W1.temperature > W2.temperature;
    
    
/*****************************METHOD 2 - USING SELF JOIN-WHERE CLAUSE*******************/
SELECT W1.id 
    FROM Weather W1,Weather W2
    WHERE DATEDIFF(W1.recordDate, W2.recordDate) = 1 AND W1.temperature > W2.temperature;