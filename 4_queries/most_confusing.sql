SELECT assignments.id AS id, count(assistance_requests.created_at) AS total_requests
FROM assignments
JOIN assignment_submissions ON assignments.id = assignment_submissions.assignment_id
JOIN assistance_requests ON assignment_submissions.id = assistance_requests.assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;