SELECT id, first_name, last_name,
       CASE
         WHEN complaint_percentile >= 99.0 THEN 'Top 1%'
         WHEN complaint_percentile >= 90.0 THEN 'Top 10%'
         WHEN complaint_percentile >= 75.0 THEN 'Top 25%'
         WHEN complaint_percentile >= 25.0 THEN 'Top 75%'
         ELSE 'Bottom 25%'
       END as allegation_count
FROM data_officer