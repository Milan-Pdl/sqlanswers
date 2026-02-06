-- Generate a complete report showing: Student name, Subject name, Faculty evaluator name, Semester, and Marks - for all records where marks are recorded.
SELECT 
    CONCAT_WS(' ', s.F_Name, s.M_Name, s.L_Name) AS Student_Name,
    sub.Subject AS Subject_Name,
    CONCAT_WS(' ', f.F_Name, f.M_Name, f.L_Name) AS Faculty_Evaluator,
    m.Semester,
    m.Marks
FROM university_paudel.marks m
INNER JOIN university_paudel.students s ON m.Enrollment_No = s.Enrollment_No
INNER JOIN university_paudel.subjects sub ON m.Subject_id = sub.Subject_id
INNER JOIN university_paudel.faculty f ON m.Faculty_id = f.Faculty_id;