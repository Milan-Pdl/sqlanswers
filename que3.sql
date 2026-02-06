SELECT 
s.Enrollment_No,
 s.F_Name, s.M_Name, s.L_Name AS Student_Full_Name,
sub.Subject AS Subject_Name,
m.Marks
FROM university_paudel.students s
INNER JOIN university_paudel.marks m ON s.Enrollment_No = m.Enrollment_No
INNER JOIN university_paudel.subjects sub ON m.Subject_id = sub.Subject_id
WHERE m.Marks > 80;