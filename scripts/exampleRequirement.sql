start transaction;
insert into Requires(CourseID) values((select CourseID from Course where DepartmentID='SOEN' and Number='341'));
insert into Satisfies(RequirementID, CourseID) values((select max(RequirementID) from Requires), 
	(select CourseID from Course where DepartmentID = 'COMP' and Number = '229')
	);
insert into Satisfies(RequirementID, CourseID) values((select max(RequirementID) from Requires), 
	(select CourseID from Course where DepartmentID = 'COEN' and Number = '311')
	);
insert into Requires(CourseID) values((select CourseID from Course where DepartmentID='SOEN' and Number='341'));
insert into Satisfies(RequirementID, CourseID) values((select max(RequirementID) from Requires), 
	(select CourseID from Course where DepartmentID = 'COMP' and Number = '352')
	);
insert into Requires(CourseID) values((select CourseID from Course where DepartmentID='SOEN' and Number='341'));
insert into Satisfies(RequirementID, CourseID) values((select max(RequirementID) from Requires), 
	(select CourseID from Course where DepartmentID = 'SOEN' and Number = '282')
	);
insert into Satisfies(RequirementID, CourseID) values((select max(RequirementID) from Requires), 
	(select CourseID from Course where DepartmentID = 'ENCS' and Number = '282')
	);
commit;
