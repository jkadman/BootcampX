SELECT students.name AS student_name, email, cohorts.name AS cohort_name
FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;