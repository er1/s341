"""
The purpose of this script is to pull information from the details page
that can be found on the myconcordia registration page. It seems to have more
accurate information reguarding dependancies compared to the regsis website.
"""

import pycurl

# Defining the sessions
SUMMER = 1
FALL = 2
FALL_WINTER = 3
WINTER = 4

class Derp:
    def __init__(self):
        self.data = ''

    def callback(self, buf):
        self.data += buf

d = Derp()
c = pycurl.Curl()
c.setopt(c.URL, "http://regsis.concordia.ca/details/details.exe")
c.setopt(c.WRITEFUNCTION, d.callback)
c.setopt(c.POSTFIELDS, "course=SOEN&courno=341+&yrsess=20094&campus=++&type=U")
print "performing...",
c.perform()
print "done!"

r1 = re.search('Prerequisite:.*</table><br>', d.data, re.DOTALL).group()
r2 = re.sub('</*\w+>', '', r1)
r3 = re.sub('Prerequisite:', '', r2)
rx = re.split(';|\.', r3)
#now we can do the requires and satisfies relations...
