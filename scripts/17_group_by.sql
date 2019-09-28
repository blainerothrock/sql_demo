-- counts of all allegation locations
SELECT location, COUNT(id)
FROM data_allegation
GROUP BY location