"""
This script pulls in the course descriptions for ENCS courses from the course
Calendar. It also gets distinct Course Name and Credits.
"""

import pycurl
import re

desc = [ "http://registrar.concordia.ca/calendar/71/71.60.html#engin",
         "http://registrar.concordia.ca/calendar/71/71.70.html#b71.70.10"
         ]

class Derp:
    def __init__(self):
        self.data = ''

    def callback(self, buf):
        self.data += buf

    def clear(self):
        self.__init__()

for url in desc:
    d = Derp()
    c = pycurl.Curl()


    c.setopt(c.URL, url)
    c.setopt(c.WRITEFUNCTION, d.callback)
    #print "performing..."
    c.perform() #go get it!
    #print "done!\n\n"

    d.data = re.sub('<br />|</b>|<i>|</i>', '', d.data)

    rx = re.findall('b>\w{4} \d{3} *[a-zA-Z0-9 ]+ *\(\d credits\)[^<]+', d.data, re.DOTALL)

    for course in rx:
        match = re.search('b>(\w{4}) (\d{3}) *([a-zA-Z0-9 ]+) *\((\d) credits\)([^<]+)', course, re.DOTALL)
        #print match.group(1) + match.group(2) + " -- " + match.group(3) + "[" + match.group(4) + " credits]"
        #print match.group(5)
        print "update Course set Description='" + match.group(3) + "\n" + re.sub('\'', '', match.group(5)) + "', Credits='" + match.group(4) + "' where DepartmentId='" + match.group(1) + "' and Number='" + match.group(2) + "';"
