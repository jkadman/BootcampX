SELECT AVG(assignment_submissions.duration) AS average_duration, students.name
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE students.end_date IS null
GROUP BY students.name
ORDER BY average_duration DESC;
