-- get the courses that the student with ID 1234567 can take next

-- get the list of courses form the sequence
-- that matches the program
-- in which the student is in
-- and where the course has not been taken
-- and the course is not in
-- the list of courses
-- that have unmet dependancies
-- based on what the student has taken


SELECT CourseID FROM SequenceDetails
  WHERE ProgramID = (
    SELECT ProgramID FROM StudentProgram
      WHERE UserID = '1234567'
    )
  AND CourseID NOT IN (
    SELECT CourseID FROM RegisteredIn
      JOIN Class ON Class.ClassID = RegisteredIn.ClassID
    )
  AND CourseID NOT IN (
    SELECT CourseID FROM Requires
      WHERE RequirementID NOT IN (
        SELECT RequirementID FROM Satisfies
          JOIN (
            SELECT CourseID FROM RegisteredIn
              JOIN Class ON Class.ClassID = RegisteredIn.ClassID
              WHERE UserID = '1234567'
            ) Taken ON Taken.CourseID = Satisfies.CourseID
        )
    )
  ORDER BY Semester;

