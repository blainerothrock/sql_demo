SELECT s.rank, AVG(salary)
FROM data_officer o
INNER JOIN data_salary s
ON s.officer_id = o.id
GROUP BY s.rank
ORDER BY AVG(salary) ASC