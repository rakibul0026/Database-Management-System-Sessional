-- Q1. Only View Roll and Name
Create VIEW student_view AS
SELECT Roll,Name
FROM student_details;


-- Q2. Insert View
INSERT INTO student_view(Roll,Name,Gender)
  VALUES (108,'Hasina','male');

-- Q3. Update View
UPDATE student_view
SET Name='Fahim'
where Roll=106;


-- Q4. Delete View
DELETE FROM student_view WHERE Roll=108

-- Q5. DROP View
DROP VIEW student_view


