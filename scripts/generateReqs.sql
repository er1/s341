start transaction;
insert into Requires(CourseID) values((select min(CourseID) from Course where DepartmentID='COMP' and Number='249'));
insert into Department(DepartmentID, DepartmentName, FacultyID)
	select 'COMP', '', 'ENCS' from dual
		where not exists (select * from Department where DepartmentID='COMP');
insert into Course(DepartmentID,Number)
	select 'COMP', '232' from dual
		where not exists (select * from Course where DepartmentID='COMP' and Number='232');
insert into Satisfies(RequirementID, CourseID) values((select max(RequirementID) from Requires), 
	(select min(CourseID) from Course where DepartmentID = 'COMP' and Number = '232')
	);
insert into Requires(CourseID) values((select min(CourseID) from Course where DepartmentID='COMP' and Number='249'));
insert into Department(DepartmentID, DepartmentName, FacultyID)
	select 'COMP', '', 'ENCS' from dual
		where not exists (select * from Department where DepartmentID='COMP');
insert into Course(DepartmentID,Number)
	select 'COMP', '248' from dual
		where not exists (select * from Course where DepartmentID='COMP' and Number='248');
insert into Satisfies(RequirementID, CourseID) values((select max(RequirementID) from Requires), 
	(select min(CourseID) from Course where DepartmentID = 'COMP' and Number = '248')
	);
insert into Requires(CourseID) values((select min(CourseID) from Course where DepartmentID='COMP' and Number='249'));
insert into Department(DepartmentID, DepartmentName, FacultyID)
	select 'MATH', '', 'ENCS' from dual
		where not exists (select * from Department where DepartmentID='MATH');
insert into Course(DepartmentID,Number)
	select 'MATH', '203' from dual
		where not exists (select * from Course where DepartmentID='MATH' and Number='203');
insert into Satisfies(RequirementID, CourseID) values((select max(RequirementID) from Requires), 
	(select min(CourseID) from Course where DepartmentID = 'MATH' and Number = '203')
	);
insert into Department(DepartmentID, DepartmentName, FacultyID)
	select 'MATH', '', 'ENCS' from dual
		where not exists (select * from Department where DepartmentID='MATH');
insert into Course(DepartmentID,Number)
	select 'MATH', '209' from dual
		where not exists (select * from Course where DepartmentID='MATH' and Number='209');
insert into Satisfies(RequirementID, CourseID) values((select max(RequirementID) from Requires), 
	(select min(CourseID) from Course where DepartmentID = 'MATH' and Number = '209')
	);
insert into Department(DepartmentID, DepartmentName, FacultyID)
	select 'CEGE', '', 'ENCS' from dual
		where not exists (select * from Department where DepartmentID='CEGE');
insert into Course(DepartmentID,Number)
	select 'CEGE', '103' from dual
		where not exists (select * from Course where DepartmentID='CEGE' and Number='103');
insert into Satisfies(RequirementID, CourseID) values((select max(RequirementID) from Requires), 
	(select min(CourseID) from Course where DepartmentID = 'CEGE' and Number = '103')
	);
insert into Requires(CourseID) values((select min(CourseID) from Course where DepartmentID='COMP' and Number='249'));
insert into Department(DepartmentID, DepartmentName, FacultyID)
	select 'MATH', '', 'ENCS' from dual
		where not exists (select * from Department where DepartmentID='MATH');
insert into Course(DepartmentID,Number)
	select 'MATH', '204' from dual
		where not exists (select * from Course where DepartmentID='MATH' and Number='204');
insert into Satisfies(RequirementID, CourseID) values((select max(RequirementID) from Requires), 
	(select min(CourseID) from Course where DepartmentID = 'MATH' and Number = '204')
	);
insert into Department(DepartmentID, DepartmentName, FacultyID)
	select 'MATH', '', 'ENCS' from dual
		where not exists (select * from Department where DepartmentID='MATH');
insert into Course(DepartmentID,Number)
	select 'MATH', '208' from dual
		where not exists (select * from Course where DepartmentID='MATH' and Number='208');
insert into Satisfies(RequirementID, CourseID) values((select max(RequirementID) from Requires), 
	(select min(CourseID) from Course where DepartmentID = 'MATH' and Number = '208')
	);
insert into Department(DepartmentID, DepartmentName, FacultyID)
	select 'CEGE', '', 'ENCS' from dual
		where not exists (select * from Department where DepartmentID='CEGE');
insert into Course(DepartmentID,Number)
	select 'CEGE', '105' from dual
		where not exists (select * from Course where DepartmentID='CEGE' and Number='105');
insert into Satisfies(RequirementID, CourseID) values((select max(RequirementID) from Requires), 
	(select min(CourseID) from Course where DepartmentID = 'CEGE' and Number = '105')
	);
insert into Department(DepartmentID, DepartmentName, FacultyID)
	select 'CEGE', '', 'ENCS' from dual
		where not exists (select * from Department where DepartmentID='CEGE');
insert into Course(DepartmentID,Number)
	select 'CEGE', '203' from dual
		where not exists (select * from Course where DepartmentID='CEGE' and Number='203');
insert into Satisfies(RequirementID, CourseID) values((select max(RequirementID) from Requires), 
	(select min(CourseID) from Course where DepartmentID = 'CEGE' and Number = '203')
	);
commit;
