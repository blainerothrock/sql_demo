-- officers with allegations resulting in suspension
SELECT first_name, last_name
FROM data_officer o
WHERE EXISTS
(
    SELECT id
    FROM data_officerallegation a
    WHERE o.id = a.officer_id
    AND final_outcome LIKE '%Suspen%'
)