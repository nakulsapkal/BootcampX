-- Get the total number of assignment submissions for each cohort.

SELECT cohorts.name AS cohort, count(assignment_submissions.*) AS total_submissions
FROM cohorts 
JOIN students on cohort_id = cohorts.id
JOIN assignment_submissions ON student_id = students.id
GROUP BY cohort
ORDER BY total_submissions DESC;