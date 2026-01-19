1# Write your MySQL query statement below
2SELECT st.student_id, st.student_name, sub.subject_name,
3    COUNT(e.subject_name) AS attended_exams
4FROM Students st
5CROSS JOIN Subjects sub
6LEFT JOIN Examinations e ON st.student_id=e.student_id
7    AND e.subject_name=sub.subject_name
8GROUP BY st.student_id, st.student_name, sub.subject_name
9ORDER BY st.student_id, sub.subject_name