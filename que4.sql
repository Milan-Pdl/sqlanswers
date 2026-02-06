SELECT 
    s.Subject, 
    m.Semester,
    AVG(m.Marks) AS Average_Marks
FROM university_paudel.subjects s
INNER JOIN university_paudel.marks m ON s.Subject_id = m.Subject_id
GROUP BY s.Subject, m.Semester;