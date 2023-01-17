SELECT students.name AS student, AVG(assignment_submissions.duration) AS student_avg, AVG(assignments.duration) AS suggested_avg
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE students.end_date IS NULL
GROUP BY student
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY student_avg;