"""
This script populates the database by calling the individual 
scripts for populating tables in the correct order.

Those scripts depend on having an internet connection and
the concordia pages that they scrape to be up and running
(and in the same format as they were at the  time of writing
this)

"""
import os


print "Creating entire database in INITIAL_DB.sql"


#First generate Faculty

os.system("echo \"insert into Faculty(FacultyName) values('ENCS');\" > INITIAL_DB.sql")

#Generate Department
#Generate Course
#Generate Class & ClassBlock
#Generate Requires & Satisfies

os.system("perl dbdump.pl >> INITIAL_DB.sql")

#Generate Program & SequenceDetails

os.system("python sequences.py >> INITIAL_DB.sql")

#Update descriptions

"""
TODO -- turns out this will require another script after all.
"""

#MISSION COMPLETE!
