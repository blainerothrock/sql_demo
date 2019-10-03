drop view beat_66_allegations;

SELECT *
INTO beat_66_allegations
FROM data_allegation
WHERE beat_id = 66;