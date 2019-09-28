-- locations with over 250 allegations before 2016
SELECT location, COUNT(id)
FROM data_allegation
WHERE NOT location = ''
AND incident_date <= '2015-12-31'
GROUP BY location
HAVING count(id) > 250
ORDER BY count(id) DESC