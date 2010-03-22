BUG REPORTING PROCEDURE README
===============================================

This bug reporting system has been created to facilitate the tracking of bugs.

A template is provided and is placed in the root of the bugs directory :

MMDDYY - type - version - priority.txt



Please rename it following the convention :

	MMDDYY : Date Month/Day/Year all in number format.

	Type : The type of bug. Use one of the following :

		- CRASH 
		   (crashes system or browser)

		- FUNCTIONALITY
		   (A functional behaviour issue. i.e clicking on a tab
		   does not give the right page or yield no page,
		   adding a constraint does not yield any change etc..)

		- GRAPHIC
		   (Images on page missing or not formated.)

		- TEXT
		   (Typo, missing text)

		- ERROR ###
		  (Error codes appear, replaces ### by actual code)

		- OTHER 
		  (Does not belong to any of the above)
	
	Version : Current build release version. If not available, use 
		  latest GIT revision key.

	Priority: Use High, Med, Low according to the following guideline.
		  HIGH : Critical to the project success
		  MED : Important functionality but not critical
		  LOW : Does not effect the project

----------------------------------------------------------------------

A bug reporting template is provided within the file. Please fill completly
fill as much as possible all fields by replacing the text in brackets.
This in a lot of cases will help target where the bug is. The following
are descriptions of each fields :

	Subject : Rewrite the type of bug followed by a short description.
		  Should be the same type as in the filename.
		  Description should be precise enough to give an idea
		  of what and where the bug is without being to vague.
		  Good example :
		  "FUNCTIONALITY - clicking on course schedule while being
		  in the course planner page logs user out."
		  Bad example :
		  "FUNCTIONALITY - Clicking on schedule doesnt work."

	Status : Current status of the bug entry
			NEW - Newly entered bug, not worked on yet.
			RESOLUTION IN PROGRESS - Currently fixing the bug.
			RESOLVED - Bug is resolved.
			WAIVED - Bug is ignored and will not be fixed.
			NOT A BUG - Issue is not a bug and is intend to
					work this way.

	Location : Where is the bug located.

	Repeatability : How many times out of 5 tries does the bug appear.

	Priority : Same as in filename description.

	Browser : Current broswer used for testing and its version.

	Operation system : Current OS used for testing and its version.

	Network : Which network is this tested on.
		  Network as in LAN or Wireless network.

	ISP : Internet service provider of the network.
	      Write "N/A" if not known.

	Computer info : short description of computer specs.
			Should at least have CPU, Manufacturer, RAM
			and if possible name of network card
			(if integrated, name the chipset and/or driver).

	Found by : Your name.

	Description : A more precise description of the bug.

	Step to Reproduce : A detail description of each steps used to
				reproduce the bug.


--------------------------------------------------------------------

Additional procedures

- All new bugs entries will be placed in the NEW folder.
- THe file should be placed in the WORK IN PROGRESS folder when it 
  is worked on.
- When resolved it will be placed in fixed folder.
- If the bug is waived or is not a bug, place it in WAIVED-NAB folder.

- Bug entries are intended for Release for testing builds only. Builds in
  developement should not follow these testing procedures.

--------------------------------------------------------------------



