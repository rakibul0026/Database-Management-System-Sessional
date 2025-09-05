 START TRANSACTION;
 INSERT INTO students (student_id, name, age, grade)
 VALUES (4, ’Bob Wilson’, 14, ’C’);
 UPDATE students SET grade = ’B’ WHERE student_id = 4;
 COMMIT;
