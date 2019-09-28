SELECT o.id as officer_id, tts.id as trr_status_id
FROM data_officer o
FULL OUTER JOIN trr_trrstatus tts on o.id = tts.officer_id