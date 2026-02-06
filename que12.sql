-- Find the student names and their contact details who have been evaluated by a faculty member with the last name 'Smith'.
SELECT 
    s.Enrollment_No,
    CONCAT_WS(' ', s.F_Name, s.M_Name, s.L_Name) AS Student_Name,
    SUM(m.Marks) AS Total_Marks
FROM university_paudel.students s
INNER JOIN university_paudel.marks m ON s.Enrollment_No = m.Enrollment_No
GROUP BY s.Enrollment_No, s.F_Name, s.M_Name, s.L_Name
ORDER BY Total_Marks DESC
LIMIT 5;