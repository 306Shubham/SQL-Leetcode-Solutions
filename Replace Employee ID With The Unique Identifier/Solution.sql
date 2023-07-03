/*******************************METHOD 1********************************/
SELECT
    eu.unique_id , e.name     
FROM
    Employees e
LEFT JOIN
    EmployeeUNI eu ON e.id = eu.id
    
    
/*******************************METHOD 2********************************/
SELECT
    CASE
        WHEN e.id = eu.id THEN eu.unique_id
        ELSE null
    END as unique_id,
    e.name
FROM
    Employees e
LEFT JOIN
    EmployeeUNI eu ON e.id = eu.id;