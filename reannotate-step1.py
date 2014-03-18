#!/usr/bin/env python

# This Python script aids in reannotating a KiCad project, while keeping
# components linked between all files.

# Step 1 adds a field called OldReference to every schematic component.

# Usage: reannotate-step1.py SCH_FILE

import sys
import os

if len (sys.argv) != 2:
    print ("Usage: %s SCH_FILE" % sys.argv[0])
    sys.exit (1)

temp_fn = sys.argv[1] + ".$"
if os.path.exists (temp_fn):
    print ("Temporary file %s already exists!" % temp_fn)
    sys.exit (1)

# $Comp
# L POT RV2
# P 4800 4750
# F 4 "RV2" H 4800 4750 50 0001 C CNN "OldReference"
#    1    4800  4750
#    -1   0     0     -1
# $EndComp

new_file = []

with open (sys.argv[1], 'r') as f:
    STATE = "root"
    COMP_REF = None
    POS = None
    FIELD_MAX = -1
    GENERATED_LINE = False
    for line in f:
        
        if STATE == "root":
            if line.startswith ("$Comp"):
                STATE = "component"
                COMP_REF = None
                POS = None
                GENERATED_LINE = False
                FIELD_MAX = -1
            new_file.append (line)
        
        elif STATE == "component":
            SKIP_LINE = False
            if line.startswith ("L "):
                COMP_REF = line.split ()[2]
            elif line.startswith ("P "):
                POS = line.partition (" ")[2].strip ()
            elif line.startswith ("F "):
                if line.strip ().endswith ("\"OldReference\""):
                    SKIP_LINE = True
                else:
                    fnum = int (line.split ()[1])
                    if fnum > FIELD_MAX:
                        FIELD_MAX = fnum
            elif (not line.startswith ("F ")) and FIELD_MAX != -1 and not GENERATED_LINE:
                new_file.append ("F %d \"%s\" H %s 50 0001 C CNN \"OldReference\"\n" %
                        (FIELD_MAX + 1, COMP_REF, POS))
                GENERATED_LINE = True
            elif line.startswith ("$EndComp"):
                STATE = "root"
            if not SKIP_LINE:
                new_file.append (line)


with open (temp_fn, 'w') as f:
    for line in new_file:
        f.write (line)

os.rename (sys.argv[1], sys.argv[1] + ".old")
os.rename (temp_fn, sys.argv[1])
