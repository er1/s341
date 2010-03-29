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

myCourse = sys.argv[1] #example "SOEN"
myCourseNum = sys.argv[2] #example "341"

# Defining the sessions
SUMMER = 1
FALL = 2
FALL_WINTER = 3
WINTER = 4

course = "SOEN"
course_num = "341"

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
        print "insert into Requires(CourseID) values((select CourseID from Course where DepartmentID='" + myCourse +"' and Number='" + myCourseNum +"'));"
        #populate Satisfies table for the corresponding RID
        for item in re.split('or', elem):
            print "insert into Satisfies(RequirementID, CourseID) values((select max(RequirementID) from Requires), "
            print "\t" + "(select CourseID from Course where DepartmentID = '" + re.search('\w{4}', item).group() + "' and Number = '" + re.search('\d{3}', item).group() + "')"
            print "\t" + ");"
"""        
        #This RID should now satisfy our Course
        print "insert into Satisfies(RequirementID, CourseId) values((select max(RequirementID) from Requirement), "
        print "\t" + "(select CourseID from Course where DepartmentID = '" + course + "' and Number = '" + course_num + "')"
        print "\t" + ");"
"""
print "commit;"
