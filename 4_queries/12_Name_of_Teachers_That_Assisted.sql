-- Get the name of all teachers that performed an assistance request during a cohort.

SELECT DISTINCT(teachers.name) AS teacher, cohorts.name AS cohort
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id= assistance_requests.student_id
JOIN cohorts ON cohorts.id= students.cohort_id
WHERE cohorts.name='JUL02'
ORDER BY teacher;
