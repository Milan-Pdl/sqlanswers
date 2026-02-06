 -- Display a list of students (enrollment number, name) and the faculty names who evaluated them in semester 2.
 SELECT 
    s.Enrollment_No,
    CONCAT_WS(' ', s.F_Name, s.M_Name, s.L_Name) AS Student_Name,
    CONCAT_WS(' ', f.F_Name, f.M_Name, f.L_Name) AS Faculty_Name
FROM university_paudel.students s
INNER JOIN university_paudel.marks m ON s.Enrollment_No = m.Enrollment_No
INNER JOIN university_paudel.faculty f ON m.Faculty_id = f.Faculty_id
WHERE m.Semester = 'Semester ';