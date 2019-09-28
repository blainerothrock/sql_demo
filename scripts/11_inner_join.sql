-- all officers w/ allegation records
SELECT first_name AS first, last_name AS last
FROM data_officer o
INNER JOIN data_officerallegation a
ON o.id = a.officer_id