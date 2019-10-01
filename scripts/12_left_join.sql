-- all officers allegation count
SELECT o.id, o.first_name, o.last_name, COUNT(a.id) as allegation_count
FROM data_officer o
LEFT JOIN data_officerallegation a on o.id = a.officer_id
GROUP BY o.id
ORDER BY allegation_count DESC;