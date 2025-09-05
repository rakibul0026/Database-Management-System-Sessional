 SELECT name, age,
 RANK() OVER (ORDER BY age) AS rank,
 DENSE_RANK() OVER (ORDER BY age) AS dense_rank
 FROM students;
