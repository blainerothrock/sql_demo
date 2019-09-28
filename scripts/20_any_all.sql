-- officers with allegations resulting in suspension
-- SELECT id
-- FROM data_allegation
-- WHERE id = ANY
-- (
--     SELECT allegation_id
--     FROM data_officerallegation
--     WHERE final_outcome LIKE '%Suspen%'
-- );
--
SELECT id
FROM data_allegation
WHERE id = ALL
(
    SELECT allegation_id
    FROM data_officerallegation
    WHERE final_finding = 'NU'
);