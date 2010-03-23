performing... done!


start transaction;
insert into Requirements () values ();
insert into Requires(RequirementID, CourseID) values((select max(RequirementID) from Requirement), 
	(select CourseID from Course where DepartmentID = 'COMP' and Number = '229')
	);
insert into Requires(RequirementID, CourseID) values((select max(RequirementID) from Requirement), 
	(select CourseID from Course where DepartmentID = 'COEN' and Number = '311')
	);
insert into Satisfies(RequirementID, CourseId) values((select max(RequirementID) from Requirement), 
	(select CourseID from Course where DepartmentID = 'SOEN' and Number = '341')
	);
insert into Requirements () values ();
insert into Requires(RequirementID, CourseID) values((select max(RequirementID) from Requirement), 
	(select CourseID from Course where DepartmentID = 'COMP' and Number = '352')
	);
insert into Satisfies(RequirementID, CourseId) values((select max(RequirementID) from Requirement), 
	(select CourseID from Course where DepartmentID = 'SOEN' and Number = '341')
	);
insert into Requirements () values ();
insert into Requires(RequirementID, CourseID) values((select max(RequirementID) from Requirement), 
	(select CourseID from Course where DepartmentID = 'SOEN' and Number = '282')
	);
insert into Requires(RequirementID, CourseID) values((select max(RequirementID) from Requirement), 
	(select CourseID from Course where DepartmentID = 'ENCS' and Number = '282')
	);
insert into Satisfies(RequirementID, CourseId) values((select max(RequirementID) from Requirement), 
	(select CourseID from Course where DepartmentID = 'SOEN' and Number = '341')
	);
commit;
