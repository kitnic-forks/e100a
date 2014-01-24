import datetime

f = open("logC.csv", 'r')

pairs = []

for line in f:
    date, value = line.split (',')
    date = datetime.datetime.strptime (date.strip (), "%Y-%m-%d %H:%M:%S.%f")
    value = value.strip ()
    pairs.append ((date, value))

f.close ()

f = open("log-fixed.csv", 'w')

first_stamp = pairs[0][0]

for date, value in pairs:
    delta = date - first_stamp
    f.write ("%f,%s\n" % (delta.total_seconds (), value))

f.close ()
