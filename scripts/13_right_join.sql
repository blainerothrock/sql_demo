-- officers allegation count with >=1 allegation
SELECT o.id, COUNT(a.id) as allegation_count
FROM data_officer o
RIGHT JOIN data_officerallegation a on o.id = a.officer_id
GROUP BY o.id
ORDER BY allegation_count DESC;