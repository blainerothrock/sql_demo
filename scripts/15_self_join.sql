SELECT o1.first_name AS officer_1, o2.first_name AS officer_2, o1.last_name
FROM data_officer o1, data_officer o2
WHERE o1.id <> o2.id
AND o1.last_name = o2.last_name;