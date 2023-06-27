/*********************************METHOD 1 - USING JOIN**********************************/
 DELETE P2
 FROM Person P1 
 INNER JOIN Person P2 ON P1.email = P2.email AND P1.id < P2.id;



/*******************************METHOD 2 - USING WITH CLAUSE******************************/
 WITH temp_table as(
     SELECT id, 
            email,
            row_number() over(partition by email ORDER BY email ASC) AS r_num
     FROM person
 )


 DELETE FROM person WHERE id IN(
     SELECT id FROM temp_table WHERE r_num <> 1
)



/*******************************METHOD 3 - USING WHERE CLAUSE*****************************/
 DELETE P1 FROM Person P1, Person p2 
 WHERE P1.email = P2.email AND P1.id > P2.id;