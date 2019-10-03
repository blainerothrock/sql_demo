SELECT officer_id, salary
FROM (
    SELECT salary, officer_id, DENSE_RANK() OVER (ORDER BY salary DESC) as dense_rank
    FROM data_salary
) as d
WHERE d.dense_rank = 11