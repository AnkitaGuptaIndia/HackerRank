/*
Problem - 1
Student Advisor 
A university has started a student-advisor plan which assigns a professor as an advisor to each student for academic guidance. 
Write a query to find the roll number and names of students who either have a male advisor with a salary of more than 15,000 or a female advisor with a salary 
of more than 20,000. 
There are two tables in the database: 
student_information and faculty_information. 
The primary key of student_information is roll_number whereas that of faculty_information is employee_ID. 
*/

SELECT s.roll_number, s.name
FROM student_information s JOIN faculty_information f 
ON s.advisor = f.employee_id
WHERE (f.gender = 'M' AND f.salary > 15000) OR
      (f.gender = 'F' AND f.salary > 20000);


/*
Problem - 2
Student Analysis 
Two tables are provided one containing student information named student_information and another table containing examination marks named examination_marks. 
Your task is to find those students roll number and name who got less than 100 marks in subject_one, subject_two and subject_three in the examination.
*/

SELECT s.roll_number, s.name
FROM student_information s JOIN examination_marks e USING(roll_number)
WHERE (e.subject_one + e.subject_two + e.subject_three) <100;

