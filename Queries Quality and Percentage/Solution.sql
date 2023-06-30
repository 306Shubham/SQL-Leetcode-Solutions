SELECT query_name,
    round(avg(rating / position), 2) AS quality,
    round(avg(rating < 3) * 100, 2) AS poor_query_percentage 
FROM Queries
GROUP BY query_name;