SELECT 
f.F_Name,
count(distinct(m.Enrollment_No)) as  student_they_have_given_marks
FROM university_paudel.faculty f
inner join university_paudel.marks m
on f.Faculty_id=m.Faculty_id
inner join university_paudel.subjects s
on m.Subject_id=s.Subject_id
group by f.F_Name