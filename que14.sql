-- Display the details of students (name, address) who have scored the highest marks in the subject 'Physics' in semester 3.
SELECT 
    CONCAT_WS(' ', s.F_Name, s.M_Name, s.L_Name) AS Student_Name,
    CONCAT_WS(', ', s.Add_1, s.Add_2, s.Add_3) AS Student_Address
FROM university_paudel.students s
INNER JOIN university_paudel.marks m ON s.Enrollment_No = m.Enrollment_No
INNER JOIN university_paudel.subjects sub ON m.Subject_id = sub.Subject_id
WHERE sub.Subject = 'Physics' 
  AND m.Semester = 'Semester 3'
ORDER BY m.Marks DESC
LIMIT 1;