SELECT dept, COUNT(Id) AS student_number
FROM student
GROUP BY dept;
