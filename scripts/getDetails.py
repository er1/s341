"""
The purpose of this script is to pull information from the details page
that can be found on the myconcordia registration page. It seems to have more
accurate information reguarding dependancies compared to the regsis website.

This script generates the requires and satisfies tables
"""

import pycurl
import re
import sys

#get the course from command line args

#myCourse = "BCEE"
#myCourseNum = "342"
myCourse = sys.argv[1] #example "SOEN"
myCourseNum = sys.argv[2] #example "341"

# Defining the sessions
SUMMER = 1
FALL = 2
FALL_WINTER = 3
WINTER = 4

#course = "SOEN"
#course_num = "341"

class Derp:
    def __init__(self):
        self.data = ''

    def callback(self, buf):
        self.data += buf

d = Derp()
c = pycurl.Curl()
c.setopt(c.URL, "http://regsis.concordia.ca/details/details.exe")
c.setopt(c.WRITEFUNCTION, d.callback)
c.setopt(c.POSTFIELDS, "course=" + myCourse + "&courno=" + myCourseNum + "+&yrsess=20094&campus=++&type=U")
#print "performing...",
c.perform()
#print "done!\n\n"

match = re.search('Prerequisite:.*</table><br>', d.data, re.DOTALL)

if match == None:
    sys.exit() #course is not offered or something

r1 = re.search('Prerequisite:.*</table><br>', d.data, re.DOTALL).group()
r2 = re.sub('</*\w+>', '', r1)
r3 = re.sub('Prerequisite:', '', r2)
rx = re.split(';|\.', r3)

#now we can do the requires and satisfies relations...

#['COMP 229 or COEN 311', ' COMP 352', ' SOEN 282 or  ENCS 282', '']
#each of these should correspond to a requirement id
#(as long as there is a course code in the element)

print "start transaction;"
for elem in rx:
    if re.search('\w{4} \d{3}', elem, re.IGNORECASE) != None:
        #have a valid requirement -- create a new RID
        #print "insert into Requirements () values ();"
        #^ those two lines are depricated
        #
        #
        #now for the new way, we have one requirement per course and n satisfy relations per requirement
        #so lets create that entry in the requres table
        print "insert into Requires(CourseID) values((select min(CourseID) from Course where DepartmentID='" + myCourse +"' and Number='" + myCourseNum +"'));"
        #populate Satisfies table for the corresponding RID
        for item in re.split('or', elem):

            matchDepID = re.search('\w{4}', item)
            matchCNum = re.search('\d{3}', item)
            if matchDepID == None or matchCNum == None:
                if re.search('previously|concurrently', elem, re.IGNORECASE) != None:
                    continue #this is where we can handle co-requisites
                else:
                    print >> sys.stderr, "Something screwed up with parsing " + myCourse + myCourseNum + " [getDetails.py]"
                    print >> sys.stderr, elem
                    continue

            #this feels like a totally nasty hack
            #I had to put this in because some things depend on courses that do not exist yet
            #an example of this is COMP249 depends on COMP232 but its is not in the system for 2009
            #thus we get a CONDITIONAL INSERT FFFFFFFFFFFFUUUUUUUUUUU-

                #it turns out that i have to do the same trick again for departments

            print "insert into Department(DepartmentID, DepartmentName, FacultyID)"
            print "\t" + "select '" + matchDepID.group() + "', '', 'ENCS' from dual"
            print "\t\t" + "where not exists (select * from Department where DepartmentID='" + matchDepID.group() + "');"

            print "insert into Course(DepartmentID,Number)"
            print "\t" + "select '" + matchDepID.group() + "', '" + matchCNum.group() + "' from dual"
            print "\t\t" + "where not exists (select * from Course where DepartmentID='" + matchDepID.group() + "' and Number='" + matchCNum.group() + "');"

            print "insert into Satisfies(RequirementID, CourseID) values((select max(RequirementID) from Requires), "
            print "\t" + "(select min(CourseID) from Course where DepartmentID = '" + matchDepID.group() + "' and Number = '" + matchCNum.group() + "')"
            print "\t" + ");"
"""        
        #This RID should now satisfy our Course
        print "insert into Satisfies(RequirementID, CourseId) values((select max(RequirementID) from Requirement), "
        print "\t" + "(select CourseID from Course where DepartmentID = '" + course + "' and Number = '" + course_num + "')"
        print "\t" + ");"
"""
print "commit;"
