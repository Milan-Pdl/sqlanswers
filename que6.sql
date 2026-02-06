-- Find the names of faculty members who have given marks to students in the subject 'Mathematics' (assuming subject name exists).-- 
SELECT f.F_Name,f.L_Name
FROM university_paudel.faculty f
INNER JOIN university_paudel.marks m ON f.Faculty_id = m.Faculty_id
INNER JOIN university_paudel.subjects s ON m.Subject_id = s.Subject_id
WHERE s.Subject = 'Mathematics';