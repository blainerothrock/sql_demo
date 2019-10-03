--
-- SELECT *
-- FROM data_allegation
-- WHERE is_officer_complaint = True
-- AND location = 'Police Building';
--
-- SELECT *
-- FROM data_allegation
-- WHERE beat_id = 160 OR beat_id = 139;
--
-- SELECT *
-- FROM data_allegation
-- WHERE is_officer_complaint = True
-- AND location = 'Police Building'
-- AND (beat_id = 160 OR beat_id = 139);
--
SELECT *
FROM data_allegation
WHERE is_officer_complaint = True
AND NOT location = 'Police Building'
AND beat_id NOTNULL
AND (beat_id = 160 OR beat_id = 139);
