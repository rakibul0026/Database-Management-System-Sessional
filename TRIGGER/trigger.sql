 CREATE TRIGGER before_student_insert
 BEFORE INSERT ON students
 FOR EACH ROW
 BEGIN
 IF NEW.age < 0 THEN
 SIGNAL SQLSTATE ’45000’
 SET MESSAGE_TEXT = ’Age cannot be negative’;
 END IF;
 END 
