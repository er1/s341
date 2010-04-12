INSERT INTO RegisteredIn (ClassID, UserID, Grade)
SELECT MAX(ClassID), '6666666', 'A' FROM SequenceDetails -- USERID HERE
JOIN Class ON Class.CourseID = SequenceDetails.CourseID
WHERE SequenceDetails.Semester < 2 -- NUM SEMESTERS HERE
AND ProgramID = 38 -- PROGRAM HERE
GROUP BY Class.CourseID
;
