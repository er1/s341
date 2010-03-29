"""
This script pulls sequence information from the (few) pages that contain the html versions of them for various programs..

it also populates the Program table and SequenceDetails table

"""
import pycurl
import re

#this is because common LISP has corrupted me
def cdr(somelist):
    newList = somelist
    newList.reverse()
    newList.pop()
    newList.reverse()
    return newList

#dictionary of places to pull sequence data from. (can add more later for winter entry/co-op)
sequences = {
    "SOEN" : 'http://www.encs.concordia.ca/current-students/undergraduate-program-requirements/course-sequences/software-engineering/regular-september/',
    "MECH" : 'http://www.encs.concordia.ca/current-students/undergraduate-program-requirements/course-sequences/mechanical-engineering/regular-september/',
    "INDU" : "http://www.encs.concordia.ca/current-students/undergraduate-program-requirements/course-sequences/industrial-engineering/regular-september/",
    "ELEC" : "http://www.encs.concordia.ca/current-students/undergraduate-program-requirements/course-sequences/electrical-engineering/electronics-september/",
    #only pdfs for these newbs (and a non-standard page O_o)
    #"COMP" : "http://www.encs.concordia.ca/current-students/undergraduate-program-requirements/course-sequences/computer-science/regular-september/",
    "COEN" : "http://www.encs.concordia.ca/current-students/undergraduate-program-requirements/course-sequences/computer-engineering/hardware-september/",
    "CIVI" : "http://www.encs.concordia.ca/current-students/undergraduate-program-requirements/course-sequences/civil-engineering/regular-september/",
    "BLDG" : "http://www.encs.concordia.ca/current-students/undergraduate-program-requirements/course-sequences/building-engineering/regular-september/",
    
    }

#this is just a container for what curl is able to pull from the web server.
class Derp:
    def __init__(self):
        self.data = ''

    def callback(self, buf):
        self.data += buf

    def clear(self):
        self.__init__() #just abuse the stack with frames :p
        
#will use the following for all sequences... but for now... just one to make sure its right...
d = Derp()
c = pycurl.Curl() #arnold aproves of curls
for seq in sequences:
    #seq contains a Department ID example "SOEN"
    #need to make an entry in the Program table...
    pName = re.search('/course-sequences/.*/(\w+)-.*/$', sequences[seq]).group(1) #this gives us something like "regular" or "hardware"
    print "insert into Program(Name, DepartmentID) values('" + pName + "', '" + seq +"');"
    d.clear()
    
    c.setopt(c.URL, sequences[seq])
    c.setopt(c.WRITEFUNCTION, d.callback)
    #print "performing..."
    c.perform() #go get it!
    #print "done!\n\n"

    #check if they are providing a pdf or html version
    if re.search('Download the course sequences for the', d.data) != None:
        #print "IM NOT PARSING PDFS!!!!"
        continue #fuck adobe!

    #now grab the sequence part
    r1 = re.search('<!-- InstanceBeginEditable.*InstanceEndEditable -->', d.data, re.DOTALL).group()

    #from this get the different years
    r2 = re.split('Fall|Winter|Summer', r1)

    #We should now have ~8 semesters with garbage in the first item in the list
    #so get the tail of the list
    r3 = cdr(r2)

    semNum = 0
    for item in r3:
        semNum += 1
        #print "\tSemester #" + str(semNum)
        for course in re.findall('\w{4}\s\d{3}', item):
            #print "\t-->" + course
            print "insert into SequenceDetails(Semester, ProgramID, CourseID) values('" + str(semNum) + "', (select ProgramID from Program where DepartmentID='" + seq + "' and Name='" + pName + "'), (select CourseID from Course where DepartmentID='" + course[0:4] + "' and Number='" + course[5:] + "');"; 
    

#when we are all done....
c.close()
