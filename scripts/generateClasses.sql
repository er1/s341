start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CV', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='342'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '10', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '20', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CV', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='342'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '10', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '20', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='BLDG' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CV', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='342'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '10', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '20', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='BLDG' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='469'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CV', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='342'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '10', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '20', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='BLDG' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='469'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COEN' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CV', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='342'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '10', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '20', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='BLDG' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='469'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COEN' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='228'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='233'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='248'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='249'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='335'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='348'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CV', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='342'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '10', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '20', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='BLDG' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='469'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COEN' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='228'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='233'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='248'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='249'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='335'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='348'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CV', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='342'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '10', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '20', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='BLDG' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='469'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COEN' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='228'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='233'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='248'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='249'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='335'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='348'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CV', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='342'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '10', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '20', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='BLDG' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='469'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COEN' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='228'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='233'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='248'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='249'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='335'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='348'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='251'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:30', '17:00', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:30', '17:00', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='264'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:45', '14:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:45', '14:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CG', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BB', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'M');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '16:15', '17:55', 'M');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BF', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:15', '10:55', 'T');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='364'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '10:16', '12:46', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '10:16', '12:46', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='425'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='433'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='442'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='462'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CV', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='342'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '10', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '20', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='BLDG' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='469'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COEN' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='228'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='233'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='248'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='249'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='335'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='348'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='251'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:30', '17:00', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:30', '17:00', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='264'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:45', '14:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:45', '14:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CG', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BB', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'M');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '16:15', '17:55', 'M');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BF', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:15', '10:55', 'T');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='364'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '10:16', '12:46', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '10:16', '12:46', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='425'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='433'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='442'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='462'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='272'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='282'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AB', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='282'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='282'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CV', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='342'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '10', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '20', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='BLDG' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='469'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COEN' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='228'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='233'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='248'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='249'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='335'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='348'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='251'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:30', '17:00', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:30', '17:00', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='264'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:45', '14:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:45', '14:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CG', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BB', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'M');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '16:15', '17:55', 'M');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BF', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:15', '10:55', 'T');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='364'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '10:16', '12:46', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '10:16', '12:46', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='425'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='433'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='442'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='462'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='272'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='282'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AB', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='282'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='282'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='201'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='213'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='233'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='243'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CV', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='251'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:45', '18:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:45', '18:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AB', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='361'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AB', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='361'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='391'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CD', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='391'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CV', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='342'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '10', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '20', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='BLDG' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='469'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COEN' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='228'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='233'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='248'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='249'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='335'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='348'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='251'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:30', '17:00', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:30', '17:00', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='264'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:45', '14:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:45', '14:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CG', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BB', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'M');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '16:15', '17:55', 'M');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BF', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:15', '10:55', 'T');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='364'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '10:16', '12:46', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '10:16', '12:46', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='425'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='433'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='442'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='462'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='272'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='282'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AB', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='282'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='282'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='201'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='213'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='233'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='243'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CV', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='251'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:45', '18:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:45', '18:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AB', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='361'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AB', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='361'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='391'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CD', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='391'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CV', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='342'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '10', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '20', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='BLDG' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='469'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COEN' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='228'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='233'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='248'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='249'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='335'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='348'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='251'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:30', '17:00', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:30', '17:00', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='264'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:45', '14:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:45', '14:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CG', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BB', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'M');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '16:15', '17:55', 'M');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BF', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:15', '10:55', 'T');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='364'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '10:16', '12:46', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '10:16', '12:46', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='425'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='433'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='442'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='462'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='272'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='282'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AB', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='282'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='282'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='201'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='213'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='233'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='243'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CV', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='251'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:45', '18:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:45', '18:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AB', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='361'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AB', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='361'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='391'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CD', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='391'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CV', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='342'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '10', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '20', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='BLDG' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='469'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COEN' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='228'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='233'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='248'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='249'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='335'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='348'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='251'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:30', '17:00', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:30', '17:00', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='264'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:45', '14:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:45', '14:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CG', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BB', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'M');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '16:15', '17:55', 'M');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BF', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:15', '10:55', 'T');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='364'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '10:16', '12:46', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '10:16', '12:46', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='425'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='433'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='442'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='462'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='272'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='282'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AB', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='282'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='282'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='201'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='213'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='233'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='243'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CV', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='251'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:45', '18:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:45', '18:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AB', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='361'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AB', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='361'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='391'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CD', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='391'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='MECH' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:45', '11:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:45', '11:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CA', (select Cou
rseID from Course where DepartmentId='MECH' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:45', '10:25', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:45', '10:25', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CB', (select Cou
rseID from Course where DepartmentId='MECH' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:45', '10:25', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:45', '10:25', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='MECH' and Number='313'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '15:45', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '15:45', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='MECH' and Number='343'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:45', '15:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:45', '15:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='MECH' and Number='343'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:00', '15:40', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='MECH' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:45', '18:15', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:45', '18:15', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='MECH' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:00', '14:50', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:00', '14:50', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='MECH' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:00', '14:50', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:00', '14:50', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CV', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='342'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '20:10', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '10', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', '20', (select Cou
rseID from Course where DepartmentId='BCEE' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'J');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'F');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:30', '10:30', 'S');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='BLDG' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='390'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='CIVI' and Number='469'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COEN' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:30', '12:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COEN' and Number='312'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:50', '14:30', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COEN' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='228'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='233'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='248'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='249'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:30', '18:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='335'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='346'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='348'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='COMP' and Number='352'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='353'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '14:05', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BB', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BE', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BF', (select Cou
rseID from Course where DepartmentId='COMP' and Number='354'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='COMP' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='251'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:30', '17:00', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:30', '17:00', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='264'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:45', '14:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:45', '14:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CG', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='275'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:00', '16:40', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BB', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'M');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '16:15', '17:55', 'M');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'BF', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '09:15', '10:55', 'T');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='364'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '10:16', '12:46', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '10:16', '12:46', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:30', '16:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AE', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='425'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='433'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:45', '20:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='442'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ELEC' and Number='462'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='272'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='282'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AB', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='282'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENCS' and Number='282'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='201'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='213'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='233'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='243'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='244'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '17:30', '18:20', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CV', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='251'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:45', '18:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:45', '18:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AB', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='361'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AB', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='361'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:45', '17:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='371'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='391'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CD', (select Cou
rseID from Course where DepartmentId='ENGR' and Number='391'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '18:30', '21:00', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='MECH' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:45', '11:15', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:45', '11:15', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CA', (select Cou
rseID from Course where DepartmentId='MECH' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:45', '10:25', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:45', '10:25', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CB', (select Cou
rseID from Course where DepartmentId='MECH' and Number='311'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:45', '10:25', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '08:45', '10:25', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'AA', (select Cou
rseID from Course where DepartmentId='MECH' and Number='313'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '15:45', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '13:15', '15:45', 'W');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='MECH' and Number='343'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:45', '15:15', 'T');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '12:45', '15:15', 'J');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='MECH' and Number='343'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:00', '15:40', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='MECH' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:45', '18:15', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '15:45', '18:15', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CE', (select Cou
rseID from Course where DepartmentId='MECH' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:00', '14:50', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:00', '14:50', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CF', (select Cou
rseID from Course where DepartmentId='MECH' and Number='370'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:00', '14:50', 'W');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '14:00', '14:50', 'F');
commit;
start transaction;
insert into Class(Year, Semester, Section, CourseID) values('2009', '04', 'CC', (select Cou
rseID from Course where DepartmentId='SOEN' and Number='287'));
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'M');
insert into ClassBlock(ClassID, StartTime, EndTime, Day) values((select max(ClassID) from Class), '11:00', '13:30', 'W');
commit;
