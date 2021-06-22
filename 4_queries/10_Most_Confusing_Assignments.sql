-- List each assignment with the total number of assistance requests with it.


SELECT assignments.id,day,chapter,assignments.name, count(assistance_requests.*) AS total_requests
FROM assignments
JOIN assistance_requests ON assignments.id =assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;