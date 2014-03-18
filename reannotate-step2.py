#!/usr/bin/env python

# This Python script aids in reannotating a KiCad project, while keeping
# components linked between all files.

# Step 1 adds a field called OldReference to every schematic component.
# Step 2 collects the new annotations from the schematic and pushes them to
# the other files.

# Usage: reannotate-step2.py SCH_FILE PCB_FILE CMP_FILE

import sys
import os
import re

if len (sys.argv) != 4:
    print ("Usage: %s SCH_FILE PCB_FILE CMP_FILE" % sys.argv[0])
    sys.exit (1)

pcb_temp_fn = sys.argv[2] + ".$"
if os.path.exists (pcb_temp_fn):
    print ("Temporary file %s already exists!" % pcb_temp_fn)
    sys.exit (1)
cmp_temp_fn = sys.argv[3] + ".$"
if os.path.exists (cmp_temp_fn):
    print ("Temporary file %s already exists!" % cmp_temp_fn)
    sys.exit (1)

# Compile a list of reference transformations. key=old, value=new
ref_transforms = {}

with open (sys.argv[1], 'r') as f:
    STATE = "root"
    COMP_REF = None
    for line in f:
        
        if STATE == "root":
            if line.startswith ("$Comp"):
                STATE = "component"
                COMP_REF = None
        
        elif STATE == "component":
            if line.startswith ("L "):
                COMP_REF = line.split ()[2]
            elif line.startswith ("F "):
                if line.strip ().endswith ("\"OldReference\""):
                    OLD_REF = line.split ()[2].strip ('"')
                    ref_transforms[OLD_REF] = COMP_REF
            elif line.startswith ("$EndComp"):
                STATE = "root"


# Edit the PCB file
# This is a new S-expression format, so line-based changes aren't so easy.
# Instead, we're going to read in the entire file, match the text,
# and substitute the new reference.
PCB_REF_REGEX = re.compile (r"(\(\s*fp_text\s+reference\s+)(\S+)")
def pcb_substitute_reference (match):
    old_ref = match.group (2)
    return match.group (1) + ref_transforms.get (old_ref, old_ref)

with open (sys.argv[2], 'r') as f:
    pcb_data = f.read ()

new_data = PCB_REF_REGEX.sub (pcb_substitute_reference, pcb_data)

with open (pcb_temp_fn, 'w') as f:
    f.write (new_data)


# Edit the CMP file
# We'll use regexps here too ^_^
CMP_REF_REGEX = re.compile (r"(Reference\s*=\s*)([^\s;]+)(\s*;)")
def cmp_substitute_reference (match):
    old_ref = match.group (2)
    return match.group (1) + ref_transforms.get (old_ref, old_ref) + match.group (3)
with open (sys.argv[3], 'r') as f:
    cmp_data = f.read ()
new_data = CMP_REF_REGEX.sub (cmp_substitute_reference, cmp_data)
with open (cmp_temp_fn, 'w') as f:
    f.write (new_data)


# Rotate in the new files
os.rename (sys.argv[2], sys.argv[2] + ".old")
os.rename (pcb_temp_fn, sys.argv[2])

os.rename (sys.argv[3], sys.argv[3] + ".old")
os.rename (cmp_temp_fn, sys.argv[3])
