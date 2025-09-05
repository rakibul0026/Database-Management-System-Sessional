SELECT name
 FROM students
 WHERE student_id IN (
 SELECT student_id
 FROM courses
 WHERE course_name = ’Math’
 );
