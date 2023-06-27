SELECT e.name as Employee
    FROM Employee e
INNER JOIN Employee m ON m.id = e.managerId
WHERE e.salary > m.salary;