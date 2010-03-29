#!/usr/bin/perl
# Perl routines to dump Concordia database information

use strict;
use warnings;

use IO::Handle;
use WWW::Curl::Easy;

my $tmp; #for cURL to write to
my $page; #handle for accessing cURL's stuff
my $status; 
my $curl = new WWW::Curl::Easy;

my @courses;
my @departments;

my $baseURL = "http://regsis.concordia.ca/class_schedule/";


open($tmp, ">", \$page);
$curl->setopt(CURLOPT_WRITEDATA, $tmp);

#populates the @departments array
&getFacultyDepartments("04", "2009", "4", "U");
#&printDepartments_SQL();


foreach my $dept (@departments) 
{
	&getDepartmentCourses($dept, "2010", "1", "04", "U");
}

&printClass_SQL();
#&printCourse_SQL();


#&getDepartmentCourses("MECH", "2009", "4", "04", "U");
#&printCourses();


#first param is Faculty ID
# " " 		Year
# " " 		Session
# " " 		Type
sub getFacultyDepartments
{
	my ($faculty, $year, $session, $type) = @_;

	$curl->setopt(CURLOPT_REFERER, $baseURL . "Sel_yrses.html");
	$curl->setopt(CURLOPT_URL, $baseURL . "ww701f.exe");
	
	$curl->setopt(CURLOPT_POSTFIELDS,
		'yrsess='.$year.$session.
		'&faculty='.$faculty.
		'&type='.$type);

	$status = $curl->perform;

	my @lines = split(/\n/, $page);

	foreach my $line (@lines)
	{
		while($line =~ m/<option value=\"(\S+)\s+\"/g)
		{
			push(@departments, $1);
		}
	}  
}

#here is the beef
sub getDepartmentCourses
{
	my ($department, $year, $session, $faculty, $type) = @_;

	$department .= "+" x (14 - length($department));

	$curl->setopt(CURLOPT_REFERER, $baseURL . "ww701f.exe");
	$curl->setopt(CURLOPT_URL, $baseURL . "ww701f.exe"); 

	$curl->setopt(CURLOPT_POSTFIELDS, 'Course='.$department.
		'&courno=&campus=All&yrsess='.$year.$session.
		'&faculty='.$faculty.
		'&type='.$type.
		'&TABLE=MAIN');

	$status = $curl->perform;

	my @lines = split(/\n/, $page);

	foreach my $line (@lines)
	{
		#print $line;
		#if ($line =~ /Prerequisite:/)
		#{
		#	print $line;
		#}
		
		# Remove some trash that makes parsing harder
                $line =~ s/\&nbsp\;//g;
		$line =~ s/<b>//g;
		$line =~ s/<\/b>//g;
		$line =~ s/\(\d\)//g;
		$line =~ s/\.\.\.\.\.\.\.\.\.\.//g;

		if($line =~ m/.*<img\ src="\/image\/\S+\.jpg"><\/td> # The dot image on the left
			<td\ width=8%\ align=center>(\S+)\s*<\/td> # Department, such as "SOEN"
			<td\ width=8%\ align=center>(\d+)\s*<\/td> # Number, such as "341"
			<td\ width=64%\ align=center>([^<]+)<\/td> # Course name, in words
			<td\ width=15%\ align=center>\(([\d\.]+)\ credits\)<\/td>.*/x) # Credits
		{
			my %course = ();
			$course{'department'} = $1;
			$course{'number'} = $2;
			$course{'name'} = $3;
			$course{'credits'} = $4;

                        my @classes = ();
			$course{'classes'} = \@classes;
			push(@courses, \%course);
		}


			#<td width=3%>/4</td>
			#<td width=15%><b></b>    Lab MI</td>
			#<td width=8%>--W----</td>
			#<td width=20%>12:00-16:00 SGW&nbsp;&nbsp;</td>
			#<td width=9%>H- 549       </td>
			#<td width=16%>CHEUNG, JOHN</td>

		if($line =~ m/.*<td\ width=3%>\/(\d)<\/td> # Semester, such as "4" for Fall
			<td\ witdh=15%>.*(Lec|Lab|Tut)\s+(\w+)\s*<\/td> # Type (Lec, Tut, Lab) and group
			<td\ width=8%>([\-A-Z]+)<\/td> # Day
			<td\ width=20%>(\d+\:\d+)\-(\d+\:\d+)\s*(\w+)[^<]*<\/td> #Start, End times and campus
			<td\ width=9%>([\w\d\-\s]*)<\/td> # Room
			<td\ width=16%>([^<]+)<\/td>.*/x) # Teacher's name
		{
			my %class = ();

			$class{'semester'} = $1;
			$class{'type'} = $2;
			$class{'group'} = $3;
			$class{'days'} = $4;
			$class{'time1'} = $5;
			$class{'time2'} = $6;
			$class{'campus'} = $7;
			$class{'room'} = $8;
			$class{'teacher'} = $9;

			$class{'room'} =~ s/\s//; # Trim whitespaces

			push(@{$courses[-1]->{'classes'}}, \%class);
		}
	}
}

sub printDepartments
{
	foreach my $department (@departments)
	{
          	print "$department\n"; 
	}
}

#ok as of 28.03.10
sub printDepartments_SQL
{
	foreach my $department (@departments)
	{
          	print "insert into Department(DepartmentID, DepartmentName, FacultyID) values('$department', '', 'ENCS');\n"; 
	}
}

sub printCourses
{
	foreach my $course (@courses)
	{
          	print "$course->{'department'} $course->{'number'}\t$course->{'name'} ($course->{'credits'} credits)\n";

		my @classes = @{$course->{'classes'}};
		
		foreach my $class (@classes)
		{
			print "$class->{'semester'} $class->{'type'} $class->{'group'} $class->{'days'} $class->{'time'} $class->{'campus'} $class->{'room'} $class->{'teacher'}\n";
		}
		print "\n";
	}
}

#ok as of 28.03.10
sub printCourse_SQL
{
	foreach my $course (@courses)
	{
		print "insert into Course(DepartmentId, Number, Name, Credits) values('$course->{'department'}', '$course->{'number'}', '$course->{'name'}', '$course->{'credits'}');\n";
	}
}

sub printClass_SQL
{
	
	foreach my $course (@courses)
	{
		my @classes = @{$course->{'classes'}};

		foreach my $class (@classes)
		{		
			print "insert into Class(Year, Semester, StartTime, EndTime, Days, Room, Section, CourseID ) ";
			print "values('2009', '04', '$class->{'time1'}', '$class->{'time2'}', '$class->{'days'}', '$class->{'room'}', '$class->{'group'}', '(select CourseID from Course where DepartmentId='$course->{'department'}' and Number='$course->{'number'}')');\n";
		}
	}
}

