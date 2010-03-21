
"""all_courses = ["COMP248", "COMP249", "COMP352",
               "SOEN228", "SOEN287", "SOEN341",
               "SOEN342", "SOEN343", "SOEN344",
               "SOEN345", "SOEN357", "SOEN384",
               "SOEN385", "SOEN390", "SOEN490",
               #"", "", "",
               #"", "", "",
               #"", "", "",
               ]
"""

completed =  ["COMP248", "COMP232", "COMP249", "COMP352", "SOEN228", "SOEN287",
              "SOEN229", "ENGR213", "ENGR201", "ENGR202", "SOEN341", "ENCS282",
              "COMP348", "ENGR233", "COMP346", "COMP335"]

deps = {
    "COMP232" : [],
    "COMP248" : [],
    "COMP249" : ["COMP232", "COMP248"],
    "COMP335" : ["COMP232", "COMP249"],
    "COMP346" : ["COMP352"],
    "COMP348" : ["COMP249"],
    "COMP352" : ["COMP232", "COMP249"],
    "ELEC275" : ["ENGR213"],
    "ENCS282" : [],
    "ENGR201" : [],
    "ENGR202" : [],
    "ENGR213" : [],
    "ENGR233" : [],
    "ENGR301" : [],
    "ENGR371" : ["ENGR213", "ENGR233"],
    "ENGR391" : ["ENGR213", "ENGR233", "COMP248"],
    "ENGR392" : ["ENCS282", "ENGR201", "ENGR202"],
    "SOEN228" : [],
    "SOEN287" : ["SOEN248"],
    "SOEN341" : ["COMP352", "ENCS282"],
    "SOEN342" : ["SOEN341"],
    "SOEN343" : ["SOEN341"],
    "SOEN344" : ["SOEN343"],
    "SOEN345" : ["SOEN341", "SOEN343"],
    "SOEN357" : ["SOEN342"],
    "SOEN384" : ["ENCS282", "SOEN341"],
    "SOEN385" : ["ENGR223", "ELEC275"],
    "SOEN390" : ["SOEN344", "SOEN357"],
    "SOEN490" : ["SOEN342", "SOEN343", "SOEN344", "SOEN390"]
}

all_courses = []
for tmp in deps:
    all_courses.append(tmp)

r = all_courses
done = []
for e in r:
    done.append(e)

    
for c in completed:
    if c in done:
        done.remove(c)

#stuff we need to take
for x in r:
    #if the course has a depend
    if deps.has_key(x):
        print x + "has deps"
        #we cant take a course if we have not completed all depends
        for depends in deps[x]:
            if completed.count(depends) == 0 and done.count(x) > 0: 
                print x + "depends on" + depends
                done.remove(x)
                break

