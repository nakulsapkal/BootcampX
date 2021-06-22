-- Get the average duration of assistance requests for each cohort.



SELECT cohorts.name AS cohort, avg(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_request_duration
FROM assistance_requests
JOIN students ON student_id=students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohort
ORDER BY average_assistance_request_duration;