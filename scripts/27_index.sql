-- SELECT *
-- FROM data_allegation
-- WHERE incident_date = '2016-07-4';

CREATE INDEX idx_incident_date
ON data_allegation (incident_date)

-- SELECT *
-- FROM data_allegation
--  WHERE incident_date = '2017-07-04'

-- DROP INDEX idx_incident_date;