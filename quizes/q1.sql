SELECT id, first_name, last_name, birth_year, complaint_percentile
FROM data_officer
WHERE birth_year NOTNULL
  AND active = 'Yes'
  AND complaint_percentile > 0.0
ORDER BY birth_year DESC, complaint_percentile DESC;