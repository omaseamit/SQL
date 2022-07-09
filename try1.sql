CREATE DATABASE usbcoaching;
SHOW DATABASES;
USE usbcoaching;
CREATE TABLE student1
(
ID int not null auto_increment primary key,
Name_of_student varchar(30),
course varchar(30),
Branch varchar(30),
Mobile varchar(10),
Date_of_inquiry date) ;
SELECT* FROM student1;
ALTER TABLE student1
DROP address;
INSERT INTO  student1 (Name_of_student,course,Branch,Mobile,Date_of_inquiry)
VALUES ('Bilal','Degree','civil','9730359868','2022-3-30');
INSERT INTO  student1 (Name_of_student,course,Branch,Mobile,Date_of_inquiry)
VALUES ('amit','Diploma','mechanical','9730359869','2022-3-29');
INSERT INTO  student1 (Name_of_student,course,Branch,Mobile,Date_of_inquiry)
VALUES ('amol','Degree','electrical','9730359867','2022-3-28');
INSERT INTO  student1 (Name_of_student,course,Branch,Mobile,Date_of_inquiry)
VALUES ('akshay','Diploma','comp','9730359866','2022-3-27');
INSERT INTO  student1 (Name_of_student,course,Branch,Mobile,Date_of_inquiry)
VALUES ('ajay','Degree','civil','9730359865','2022-3-26');
SELECT * FROM student1
WHERE Branch LIKE 'c%'; 
SELECT * FROM student1
WHERE Course IN ('Diploma');
SELECT * FROM student1
WHERE Branch NOT IN  ('Civil','Mechanical');
SELECT * FROM student1
WHERE ID BETWEEN 3 and 5 ;
UPDATE student1 
SET Mobile = '9730811111'
WHERE ID = 4;
UPDATE `usbcoaching`.`student1`
SET`Name_of_student` = 'Neha'
WHERE(`ID` = '1');
DELETE FROM student1
WHERE ID =2;
DELETE  FROM student1;
#Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE 
#that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.
TRUNCATE TABLE student1;
SELECT * FROM student1
LIMIT 3;
SELECT * FROM  student1
ORDER by Branch;
SELECT * FROM student1
ORDER by Branch desc;
SELECT COUNT(ID)AS Total_id
FROM student1;
ALTER TABLE student1
ADD Fees_paid int ;
ALTER TABLE student1
DROP feespaid;
SELECT SUM(fees_paid)AS Total_fees
FROM student1;
SELECT AVG (fees_paid)
FROM student1;
DROP TABLE student1;
DROP DATABASE usbcoaching;


























 




