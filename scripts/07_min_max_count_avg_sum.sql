-- SELECT COUNT(*)
-- FROM data_award
-- WHERE ceremony_date IS NOT NULL;
--
-- SELECT MAX(birth_year)
-- FROM data_officer
-- WHERE birth_year IS NOT NULL;
--
-- SELECT AVG(birth_year)
-- FROM data_officer
-- WHERE birth_year IS NOT NULL;
--
-- SELECT COUNT(*)
-- FROM data_officer
-- WHERE birth_year IS NOT NULL;
--
SELECT SUM(salary)
FROM data_salary
WHERE year = 2017;