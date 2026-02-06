-- 13. List all faculty members along with the number of different subjects they have taught (based on marks entries).
SELECT 
    CONCAT_WS(' ', f.F_Name, f.M_Name, f.L_Name) AS Faculty_Name,
    COUNT(DISTINCT m.Subject_id) AS Unique_Subjects_Taught
FROM university_paudel.faculty f
LEFT JOIN university_paudel.marks m ON f.Faculty_id = m.Faculty_id
GROUP BY f.Faculty_id, f.F_Name, f.M_Name, f.L_Name;