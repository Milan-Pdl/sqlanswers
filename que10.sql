-- . Display the faculty name and the total marks they have awarded in each semester.
SELECT 
    CONCAT_WS(' ', f.F_Name, f.M_Name, f.L_Name) AS Faculty_Name,
    m.Semester,
    SUM(m.Marks) AS Total_Marks_Awarded
FROM university_paudel.faculty f
INNER JOIN university_paudel.marks m ON f.Faculty_id = m.Faculty_id
GROUP BY f.Faculty_id, f.F_Name, f.M_Name, f.L_Name, m.Semester;