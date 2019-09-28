SELECT first_name, last_name, birth_year
FROM data_officer
WHERE birth_year IS NULL
ORDER BY birth_year DESC;