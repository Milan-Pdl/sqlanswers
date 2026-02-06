-- Find the student names and their contact details who have been evaluated by a faculty member with the last name 'Smith'.
SELECT DISTINCT
    CONCAT_WS(' ', s.F_Name, s.M_Name, s.L_Name) AS Student_Name,
    s.Contact_No
FROM university_paudel.students s
INNER JOIN university_paudel.marks m ON s.Enrollment_No = m.Enrollment_No
INNER JOIN university_paudel.faculty f ON m.Faculty_id = f.Faculty_id
WHERE f.L_Name = 'Smith';