-- 1. List all students with their enrollment number and full name (first, middle, last), along with the 
-- marks they scored in any subject in semester 1.

SELECT 
	st.Enrollment_No,
	st.F_Name,
	st.L_Name,
	m.Marks
FROM university_paudel.students st
	inner join university_paudel.marks m
	on st.Enrollment_No=m.Enrollment_No
where m.Semester="Semester 1"