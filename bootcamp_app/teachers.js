const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

console.log("connected!");
const nameCohort = process.argv[2];

pool.query(
    `SELECT DISTINCT(teachers.name) AS teacher, cohorts.name AS cohort
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id= assistance_requests.student_id
JOIN cohorts ON cohorts.id= students.cohort_id
WHERE cohorts.name = '${nameCohort || 'JUL02'}'
ORDER BY teacher;`
  )
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.cohort}:${user.teacher} `);
    })
  });