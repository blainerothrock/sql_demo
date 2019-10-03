-- all officers allegation count
SELECT o.id, o.first_name, o.last_name, a.id FROM data_officer o
LEFT JOIN data_officerallegation a on o.id = a.officer_id
--GROUP BY o.id
--ORDER BY allegation_count DESC;