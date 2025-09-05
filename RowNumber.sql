 SELECT name, age,
 ROW_NUMBER() OVER (ORDER BY age) AS row_num
 FROM students;
