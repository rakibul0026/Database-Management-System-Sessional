 SELECT grade, COUNT(*) AS count
 FROM students
 GROUP BY grade
 HAVING count > 1;
