-- CREATE VIEW beat_66_allegations AS
--     SELECT * FROM data_allegation
--     WHERE beat_id = 66;
CREATE VIEW allegation_count_by_outcome AS
    SELECT final_outcome, COUNT(id)
    FROM data_officerallegation
    GROUP BY final_outcome;