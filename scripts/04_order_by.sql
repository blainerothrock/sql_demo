-- SELECT first_name, last_name, birth_year
-- FROM data_officer
-- WHERE birth_year IS NOT NULL
-- ORDER BY birth_year DESC;

SELECT first_name, last_name, birth_year
FROM data_officer
WHERE birth_year IS NOT NULL
ORDER BY birth_year DESC, last_name ASC;