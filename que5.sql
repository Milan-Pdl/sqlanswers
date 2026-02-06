-- --. Show the details of students (enrollment number, full name) who have not been assigned any marks in any subject.
select st.Enrollment_no,st.F_Name,st.L_Name from university_paudel.students st
left join university_paudel.marks m
on st.Enrollment_No=m.Enrollment_No
WHERE m.Enrollment_No IS NULL;