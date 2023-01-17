SELECT cohorts.name, count(students.*) AS total_students
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER by count(students.*);