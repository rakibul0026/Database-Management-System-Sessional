  CREATE PROCEDURE GetStudentCount()
 BEGIN
 SELECT COUNT(*) AS total_students FROM students;
 END 
 CALL GetStudentCount();
