select * from copa_officer;

-- Dense Rank SQL multiple options:


SELECT officer_id, salary
FROM (
      SELECT salary,
             officer_id,
          DENSE_RANK() OVER (ORDER BY SALARY DESC) AS DENSE_RANK
      FROM data_salary
      ) as d
WHERE d.dense_rank = 3;

-- run with and without distinct

select  distinct x.first_name, x.last_name, AD.salary  --, AD.id
from data_officer x,
(SELECT officer_id, salary, id
FROM (
      SELECT id, salary,
             officer_id,
          DENSE_RANK() OVER (ORDER BY SALARY DESC) AS DENSE_RANK
      FROM data_salary
      ) as d
WHERE d.dense_rank = 3) as AD
where x.id = AD.officer_id;

-- display dirty data - Mr John Escalante has two records
select distinct * from  data_officer o, data_salary s where  o.id = s.officer_id and o.first_name ='John' and last_name ='Escalante';

select distinct x.first_name, x.last_name, AD.salary, cast(AD.salary as money) from data_officer x,
(SELECT officer_id, salary
FROM (
      SELECT salary,
             officer_id,
          DENSE_RANK() OVER (ORDER BY SALARY DESC) AS DENSE_RANK
      FROM data_salary
      ) as d
WHERE d.dense_rank = 3) as AD
where x.id = AD.officer_id;


 --Average Salary by Rank  - order ASC/Desc

select rank, avg(salary) from data_salary group by rank order by avg(salary) asc;


select rank, avg(salary) from data_salary group by rank order by avg(salary) desc;


--Group By with Order By for number of allegation count

SELECT o.id, COUNT(a.id) as allegation_count
FROM data_officer o
LEFT JOIN data_officerallegation a on o.id = a.officer_id
GROUP BY o.id
ORDER BY allegation_count DESC;




-- TO_char

SELECT
    complaint_date,
    TO_CHAR(
        complaint_date,
        'HH12:MI:SS'
    ) complaint_time
FROM
    copa_officer
ORDER BY
    complaint_date;

----
SELECT
    complaint_date,
    TO_CHAR(
        complaint_date,
        'MON-DD-YYYY HH12:MI PM'
    ) complaint_time
FROM
    copa_officer
ORDER BY
    complaint_date;

--

SELECT
    complaint_date,
    TO_CHAR(
        complaint_date,
        'MON/DD/YYYY HH12:MI:SS PM'
    ) complaint_time
FROM
    copa_officer
ORDER BY
    complaint_date;

-----  The officer first name last name has a salary of X and was hired on date Y

select 'officer ' || x.first_name || ' '|| x.last_name || ' has a salary of '|| cast(s.salary as money) || ' and was hired on ' ||  TO_CHAR(
        s.org_hire_date,
        'MON DD YYYY')   from data_officer x, data_salary s
where s.officer_id = x.id


-------

select officer_id, count(allegation_id), officer_age from data_officerallegation group by officer_id, allegation_id, officer_age order by officer_age
