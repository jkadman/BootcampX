SELECT students.name AS student_name, email, cohorts.name AS cohort_name
FROM students JOIN cohorts ON cohort_id = cohorts.id;