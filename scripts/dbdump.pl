#!/usr/bin/perl -w
# Perl routines to dump Concordia database information

# This will generate the Departments table and Course table

use strict;
use warnings;

use IO::Handle;
use WWW::Curl::Easy;
use Clone qw(clone);

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

&printDepartments_SQL();

#&getDepartmentCourses("ELEC", "2010", "1", "04", "U");
#&getDepartmentCourses("SOEN", "2009", "2", "04", "U");
#&printCourses();
foreach my $dept (@departments) 
{
#	#&getDepartmentCourses($dept, "2009", "2", "04", "U");
	&getDepartmentCourses($dept, "2009", "4", "04", "U");
}

#&debugCourses();
#&debugClasses();
&printCourse_SQL();
&printClass_SQL();

&printDetails_SQL();

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

	my %tmpclass = ();
	my $level = 0;
	
	my @lines = split(/\n/, $page);

	foreach my $line (@lines)
	{
		
		# Remove some trash that makes parsing harder
                $line =~ s/\&nbsp\;//g;
		#$line =~ s/<b>//g;
		#$line =~ s/<\/b>//g;
		$line =~ s/\(\d\)//g;
		#$line =~ s/\.\.\.\.\.\.\.\.\.\.//g;

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

		if($line =~ m/.*<td\ \w+=3%>\/(\d)<\/td> # Semester, such as "4" for Fall
			<td\ \w+=15%>.*(Lec)\s+(\w{1,})\s*<\/td> # Type (Lec, Tut, Lab) and group
			<td\ \w+=8%>([\-A-Z]+)<\/td> # Day
			<td\ \w+=20%>(\d+\:\d+)\-(\d+\:\d+)\s*(\w+)[^<]*<\/td> #Start, End times and campus
			<td\ \w+=9%>([\w\d\-\s]*)<\/td> # Room
			<td\ \w+=16%>([^<]+)<\/td>.*/x) # Teacher's name
		{
			my %class = ();
			my @blocks = ();

			$class{'semester'} = $1;
			#$class{'type'} = $2;
			$class{'group'} = $3;
			#$class{'days'} = $4;
			#$class{'time1'} = $5;
			#$class{'time2'} = $6;
			#$class{'campus'} = $7;
			#$class{'room'} = $8;
			#$class{'teacher'} = $9;
			$class{'year'} = $year;
			$class{'session'} = $session;

			#$class{'room'} =~ s/\s//; # Trim whitespaces

			$class{'blocks'} = \@blocks;

			my %block = ();
			$block{'type'} = $2;
			$block{'group'} = $3;
			$block{'days'} = $4;
			$block{'time1'} = $5;
			$block{'time2'} = $6;
			$block{'campus'} = $7;
			$block{'room'} = $8;
			$block{'teacher'} = $9;
			$block{'room'} =~ s/\s//; # Trim whitespaces

			
			push(@{$class{'blocks'}}, \%block);
			
			#push(@{$courses[-1]->{'classes'}}, \%class);
			%tmpclass = %class;
		}




		if($line =~ m/.*<td\ \w+=3%>\/(\d)<\/td> # Semester, such as "4" for Fall
			<td\ \w+=15%>\.+.*(Lab|Tut)\s+(\w{1,})\s*<\/td> # Type (Lec, Tut, Lab) and group
			<td\ \w+=8%>([\-A-Z]+)<\/td> # Day
			<td\ \w+=20%>(\d+\:\d+)\-(\d+\:\d+)\s*(\w+)[^<]*<\/td> #Start, End times and campus
			<td\ \w+=9%>([\w\d\-\s]*)<\/td> # Room
			<td\ \w+=16%>([^<]+)<\/td>.*/x) # Teacher's name
		{
			my %block = ();
			$block{'type'} = $2;
			$block{'group'} = $3;
			$block{'days'} = $4;
			$block{'time1'} = $5;
			$block{'time2'} = $6;
			$block{'campus'} = $7;
			$block{'room'} = $8;
			$block{'teacher'} = $9;
			$block{'room'} =~ s/\s//; # Trim whitespaces

			if (@{$tmpclass{'blocks'}}[-1]->{'type'} =~ m/Tut/)
			{
				pop(@{$tmpclass{'blocks'}});
				push(@{$tmpclass{'blocks'}}, \%block);
			}
			else
			{
				push(@{$tmpclass{'blocks'}}, \%block);
			}
			$tmpclass{'group'} .= $block{'group'};
			#push(@{$courses[-1]->{'classes'}[-1]->{'blocks'}}, \%block);
			$level = 1;
		}


		if($line =~ m/.*<td\ \w+=3%>\/(\d)<\/td> # Semester, such as "4" for Fall
			<td\ \w+=15%><b>.*(Lab|Tut)\s+(\w{1,})\s*<\/td> # Type (Lec, Tut, Lab) and group
			<td\ \w+=8%>([\-A-Z]+)<\/td> # Day
			<td\ \w+=20%>(\d+\:\d+)\-(\d+\:\d+)\s*(\w+)[^<]*<\/td> #Start, End times and campus
			<td\ \w+=9%>([\w\d\-\s]*)<\/td> # Room
			<td\ \w+=16%>([^<]+)<\/td>.*/x) # Teacher's name
		{
			my %block = ();
			$block{'type'} = $2;
			$block{'group'} = $3;
			$block{'days'} = $4;
			$block{'time1'} = $5;
			$block{'time2'} = $6;
			$block{'campus'} = $7;
			$block{'room'} = $8;
			$block{'teacher'} = $9;
			$block{'room'} =~ s/\s//; # Trim whitespaces

			#if (@{$tmpclass{'blocks'}}[-1]->{'type'} =~ m/(Tut|Lab)/)
			#{
				#print "replacing " . @{$tmpclass{'blocks'}}[-1]->{'group'} . " with " . $block{'group'} . "\n";
				#print " \$tmpclass = $\%tmpclass \$tmpclass{'blocks'} = $\$tmpclass{'blocks'} \n";

				#pop(@{$tmpclass{'blocks'}});
				#push(@{$tmpclass{'blocks'}}, \%block);

				push(@{$tmpclass{'blocks'}}, \%block); #~~~~~~~~~~~~~~~~~~~
				
				#my @blkarr = $tmpclass{'blocks'};
				#@blkarr[-1] = \%block;
				#$tmpclass{'blocks'} = @blkarr;
				#$tmpclass{'blocks'}[-1] = \%block;
			#}
			#else
			#{
			#	push(@{$tmpclass{'blocks'}}, \%block);
			#}
			#push(@{$tmpclass{'blocks'}}, \%block);
			if($block{'type'} =~ m/Lab/)
			{
				$tmpclass{'group'} = @{$tmpclass{'blocks'}}[0]->{'group'} . @{$tmpclass{'blocks'}}[-1]->{'group'} . $block{'group'};
			}
			else
			{
				$tmpclass{'group'} = @{$tmpclass{'blocks'}}[0]->{'group'} . $block{'group'};
			}
			#push(@{$courses[-1]->{'classes'}[-1]->{'blocks'}}, \%block);

			my %newclass = %{ clone (\%tmpclass) };
			#%newclass =  %tmpclass;
					
			push(@{$courses[-1]->{'classes'}}, \%newclass);
			#%tmpclass = ();
			if($level == 1)
			{
				while (@{$tmpclass{'blocks'}}[-1]->{'type'} =~ m/Lab/)
				{
					pop(@{$tmpclass{'blocks'}});
				}
			}
			else
			{
				while (@{$tmpclass{'blocks'}}[-1]->{'type'} =~ m/(Tut|Lab)/)
				{
					pop(@{$tmpclass{'blocks'}});
				}
			}
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

sub printCourse_SQL
{
        #modified to avoid dupes
	foreach my $course (@courses)
	{
	        print "insert into Course(DepartmentId, Number, Name, Credits)\n";
		print "\t" . "select '$course->{'department'}', '$course->{'number'}', '$course->{'name'}', '$course->{'credits'}' from dual\n";
		print "\t\t" . "where not exists (select * from Course where DepartmentId='$course->{'department'}' and Number='$course->{'number'}');\n";
	}
}

sub printDetails_SQL
{
	foreach my $course (@courses)
	{
	        system("python getDetails.py $course->{'department'} $course->{'number'}");
	}
}

sub debugCourses
{
    foreach my $course (@courses)
    {
	print "$course->{'department'} $course->{'number'}\n";
    }
}

sub debugClasses
{
	
	foreach my $course (@courses)
	{
		my @classes = @{$course->{'classes'}};

		foreach my $class (@classes)
		{		
			print "\tCLASS: group '$class->{'group'}' [$course->{'department'}$course->{'number'}]\n";# $class->{'year'}/$class->{'session'}\n";

			my @classblocks = @{$class->{'blocks'}};
			foreach my $cb (@classblocks)
			{
				my $days = $cb->{'days'};
				$days =~ s/\-//g;
				my @day_array = split(//, $days);
				foreach my $slot (@day_array)
				{
					print "\t\t $cb->{'type'} $cb->{'group'} time 1 '$cb->{'time1'}', time 2 '$cb->{'time2'}', '$slot'\n";
				}
			}

			#We now need to create a ClassBlock for every day that the class is scheduled for
			#my $days = $class->{'days'};
			#$days =~ s/\-//g;
			#my @day_array = split(//, $days);
			
			#foreach my $block (@day_array)
			#{
			#	print "\ttime 1 '$class->{'time1'}', time 2 '$class->{'time2'}', '$block');\n";
			#}
			
		}
	}
}

sub printClass_SQL
{
	
	foreach my $course (@courses)
	{
		my @classes = @{$course->{'classes'}};

		foreach my $class (@classes)
		{		
			#print "insert into Class(Year, Semester, StartTime, EndTime, Days, Room, Section, CourseID ) ";
		        print "\nstart transaction;\n"; 
		        print "insert into Class(Year, Semester, Section, CourseID)\n";
			print "values('2009', '04', '$class->{'group'}', (select min(CourseID) from Course where DepartmentId='$course->{'department'}' and Number='$course->{'number'}'));\n";


			my @classblocks = @{$class->{'blocks'}};
			foreach my $cb (@classblocks)
			{
				my $days = $cb->{'days'};
				$days =~ s/\-//g;
				my @day_array = split(//, $days);
				foreach my $slot (@day_array)
				{
					print "insert into ClassBlock(ClassID, StartTime, EndTime, Day, Room, Type)\n";
					print "\tvalues((select max(ClassID) from Class), '$cb->{'time1'}', '$cb->{'time2'}', '$slot', '$cb->{'room'}', '$cb->{'type'}');\n";
					#print "\t\t $cb->{'type'} $cb->{'group'} time 1 '$cb->{'time1'}', time 2 '$cb->{'time2'}', '$slot');\n";
				}
			}
			#We now need to create a ClassBlock for every day that the class is scheduled for
			#my $days = $class->{'days'};
			#$days =~ s/\-//g;
			#my @day_array = split(//, $days);
			
			#foreach my $block (@day_array)
			#{
			#        print "insert into ClassBlock(ClassID, StartTime, EndTime, Day) ";
			#	print "values((select max(ClassID) from Class), '$class->{'time1'}', '$class->{'time2'}', '$block');\n";
			#}

			
			#print "values('2009', '04', '$class->{'time1'}', '$class->{'time2'}', '$class->{'days'}', '$class->{'room'}', '$class->{'group'}', '(select CourseID from Course where DepartmentId='$course->{'department'}' and Number='$course->{'number'}')');\n";
			print "commit;\n";
		}
	}
}

