 SELECT name, grade, age,
 AVG(age) OVER (PARTITION BY grade) AS avg_age_by_grade
 FROM students;
