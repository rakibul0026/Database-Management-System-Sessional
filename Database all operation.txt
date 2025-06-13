CREATE DATABASE collegeinfo;

SHOW DATABASES;

CREATE TABLE Studentinfo(
	Roll int(3),
	Name varchar(20),
	Age int(3),
	CGPA double(3,2)
);

INSER INTO studentinfo(Roll,Name,Age,CGPA) VALUES(101,'Rahim',21,3.75);
INSERT INTO Studentinfo Values(102,'Karim',22,3.81);
INSERT INTO Studentinfo VALUES
(103, 'Tanzim', 21, 3.82),
(104, 'Rahkim', 22, 3.86);

SELECT Name,CGPA from StudentInfo;

SELECT * from StudentInfo;

***** Shows first 2 row ******
SELECT * FROM studentinformation 
LIMIT 2;

ALTER TABLE studentinformation
ADD Email varchar(255);

ALTER TABLE studentinformation
ADD City varchar(30);


******* ALTER keyword ********

ALTER TABLE studentinformation
ADD dept varchar(100);

ALTER TABLE studentinformation
CHANGE dept Department varchar(80);

ALTER TABLE studentinformation
DROP COLUMN Email;

*******************************

INSERT INTO studentinformation(City,Department)
VALUES('Sylhet', 'CSE');

*********UPDATE**********

UPDATE studentinformation 
set City = 'Sylhet'
WHERE Roll=101;

*************************

UPDATE studentinformation
set City = 'Chandpur'
WHERE Roll = 101;

UPDATE studentinformation
set City = 'Dhaka'
WHERE Roll = 104;

#  *******deleting a whole row********

DELETE from studentinformation
WHERE Roll=103;

**************************************

RENAME TABLE studentinformation to student_info;

DROP TABLE teacher;

***** show distinct column name *******
SELECT DISTINCT City
FROM student_info;

*******Sorting column value **********

SELECT Name,Age
FROM student_info
ORDER BY Name;

SELECT Name,CGPA,City
FROM student_info
ORDER BY CGPA DESC;

****** Arithmetic Operator **********

SELECT 9%2;
SELECT 5+2;
SELECT 5/2;

********WHERE************
SELECT Name,City 
FROM student_info
WHERE City='Chandpur';

SELECT Roll,CGPA,Age
FROM student_info
WHERE CGPA > 3.75
ORDER BY Age;

*********BETWEEN************
SELECT Roll,Name,CGPA
FROM student_info
WHERE Roll BETWEEN 102 and 104;

SELECT Roll,Name,CGPA
FROM student_info
WHERE Roll != 102;

********* AND, OR **********

SELECT * FROM student_info
WHERE City='Chandpur' OR CGPA >3.80;

SELECT * FROM student_info
WHERE (City='Sylhet')
AND
(Age=21 OR CGPA>3.80)


********* IN, NOT IN *************

SELECT *
FROM student_info
WHERE City IN('sylhet','chandpur');

SELECT *
FROM student_info
WHERE City NOT IN('sylhet','chandpur');

*********** LIKE operator ***********

SELECT * FROM `student_info`
WHERE Name LIKE '%m';

SELECT * FROM `student_info`
WHERE City LIKE 's%';

SELECT * FROM `student_info`
WHERE City LIKE 's%';

SELECT * FROM `student_info`
WHERE City LIKE '__l%';

SELECT * FROM student_info
WHERE City LIKE '%e_';

*********** AS *************
SELECT Roll AS ID, Name AS 'First Name'
FROM student_info;

******* DROP a table ************
DROP TABLE student_identity;

******* DROP a database **********
DROP DATABASE collegeinfo2;

****** Constraint, Auto_Increment **********
s
CREATE TABLE teacher(
    ID int NOT NULL AUTO_INCREMENT,
    Name varchar(15) NOT NULL,
    Salary double(10,2),
    PRIMARY KEY(ID)
);    

INSERT INTO teacher(ID, Name, Salary)
VALUES(1000,'Sajib',35000);

INSERT INTO teacher(Name,Salary)
VALUES('Sujon', 25000),
('Rayhan',31000), ('Siraj',12000);

UPDATE teacher
set Salary = 19000
WHERE ID = 1003;

SELECT UPPER('i am man');
SELECT lower('HELLO, I am From BanglaDEsh');

SELECT UPPER(Name)
FROM teacher;

SELECT UPPER(Name) AS FIRST_NAME
FROM teacher;

********* CONCAT *************
SELECT CONCAT('Welcome to ', 'mySql database');

SELECT CONCAT('I am ', Name, ID, ' Id No') AS tutor
FROM teacher;

********* Greatest, least, truncate, rand(), log ****

SELECT LEAST(-5,3,-15,18); = -15
SELECT GREATEST(-5,3,-15,18); = 18

SELECT POW(2,3); = 8
SELECT LOG(2);
SELECT LOG10(2);

SELECT TRUNCATE( 10.25858, 2 );
SELECT TRUNCATE( LOG(2), 2 );

SELECT rand();

*********** Aggregate functions ***********

DESCRIBE teacher;

SELECT MAX(Salary)
FROM teacher;

SELECT MIN(Salary)
FROM teacher;

SELECT SUM(Salary), AVG(Salary)
FROM teacher;

SELECT COUNT(*), MAX(Salary),Min(Salary), SUM(Salary), AVG(Salary) FROM teacher;

SELECT Name, MIN(Salary)
FROM teacher;

***** DISTINCT **********

SELECT distinct CITY from STATION 
where ID % 2=0;


**** finding number of difference using count******

SELECT count(CITY) - count(DISTINCT CITY) from STATION;

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) AS DIFFERENCE
FROM STATION;
