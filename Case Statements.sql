 SELECT name,
 CASE
 WHEN age >= 16 THEN ’Senior’
 ELSE ’Junior’
 END AS student_level
 FROM students;
