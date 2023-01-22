const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohortName = process.argv[2];

pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE '%${cohortName}%'
ORDER BY teacher;
`)
.then(res => {
    res.rows.forEach(element => {
      console.log(`${cohortName}: ${element.teacher}`)
    })
})
.catch(err => console.error('query error', err.stack));