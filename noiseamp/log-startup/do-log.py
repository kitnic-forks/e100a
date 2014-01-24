DEFAULT_ADDR = "ASRL1"

import visa
import time
import datetime

inst = visa.instrument (DEFAULT_ADDR)

def cmd (inst, cmd):
    inst.write (cmd)
    save_resp = None
    while True:
        try:
            resp = inst.read ()
        except visa.VisaIOError:
            return save_resp
        if resp == "\n=>":
            return save_resp
        else:
            save_resp = resp
    
inst.write ("*RST")
cmd (inst, "REMS")
cmd (inst, "VDC")
cmd (inst, "AUTO")
cmd (inst, "RATE S")

f = open ('log.csv', 'w')

try:
    while True:
        val = float (cmd (inst, "MEAS?"))
        print val
        f.write ("%s, %f\n" % (str (datetime.datetime.now ()), val))
        f.flush ()
except KeyboardInterrupt:
    cmd (inst, "LOCS")
    f.close ()
    raise
