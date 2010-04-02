"""
This script populates the database by calling the individual 
scripts for populating tables in the correct order.

Those scripts depend on having an internet connection and
the concordia pages that they scrape to be up and running
(and in the same format as they were at the  time of writing
this)

"""

import os


print "Creating entire database in INITIAL_DB.sql..."

print "This can take upwards of 45mins, so play some NES or something..."


#First generate Faculty

os.system("echo \"insert into Faculty(FacultyID, FacultyName) values('ENCS', 'Engineering & Computer Science');\" > INITIAL_DB.sql")

#Generate Requires & Satisfies

os.system("perl dbdump.pl >> INITIAL_DB.sql")

#Generate Program & SequenceDetails

os.system("python sequences.py >> INITIAL_DB.sql")

#Update descriptions

os.system("python getDescriptions.py >> INITIAL_DB.sql")

#MISSION COMPLETE!
