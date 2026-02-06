-- Show the subject names and the corresponding faculty names who taught and evaluated that subject in any semester.
SELECT DISTINCT
    s.Subject AS Subject_Name,
    CONCAT_WS(' ', f.F_Name, f.M_Name, f.L_Name) AS Faculty_Name
FROM university_paudel.subjects s
INNER JOIN university_paudel.marks m ON s.Subject_id = m.Subject_id
INNER JOIN university_paudel.faculty f ON m.Faculty_id = f.Faculty_id;