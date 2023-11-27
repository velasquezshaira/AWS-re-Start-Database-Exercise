SELECT Students.STUDENT_ID, Students.NAME
FROM Students
JOIN Enrollments ON Students.STUDENT_ID = Enrollments.STUDENT_ID
WHERE Enrollments.COURSE_ID = 121;

SELECT Students.STUDENT_ID, Students.NAME, COUNT(Enrollments.COURSE_ID) AS TOTAL_CREDITS
FROM Students
LEFT JOIN Enrollments ON Students.STUDENT_ID = Enrollments.STUDENT_ID
GROUP BY Students.STUDENT_ID, Students.NAME;

SELECT Courses.COURSE_NAME, COUNT(Enrollments.STUDENT_ID) AS NUM_STUDENTS
FROM Courses
LEFT JOIN Enrollments ON Courses.COURSE_ID = Enrollments.COURSE_ID
GROUP BY Courses.COURSE_NAME;