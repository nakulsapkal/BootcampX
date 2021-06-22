-- Get the total number of assistance_requests for a teacher.


SELECT count(assistance_requests.*) AS total_assistances, name 
FROM teachers
JOIN assistance_requests on teachers.id=assistance_requests.teacher_id
WHERE name ='Waylon Boehm'
GROUP BY name;
