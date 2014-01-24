import math

HEAD="""<?xml version="1.0" encoding="UTF-8" standalone="no"?>

<svg xmlns="http://www.w3.org/2000/svg" version="1.1"
  width="141.732" height="70.8661" id="svg2">
"""

FOOT="""
</svg>
"""

ARC="""
  <path
     style="fill:none;stroke:#000000;stroke-width:1.77165353;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-opacity:1;stroke-dasharray:none"
     id="path3223"
     d="m 141.45998,217.22241 a 78.90625,80.46875 0 0 1 90.51753,0"
     transform="matrix(1.0436717,0,0,1.0234063,-125.0367,-179.70486)" />
"""

# Tick mark counts do not include mark 1
TOPSCALE_MAJORS = 4 # 5, 10, 15, 20
TOPSCALE_MINORS = 4 # 2, 4, 6, 8
TOPSCALE_START = 125.
TOPSCALE_END = 55.

BOTSCALE_MAJORS = 4 # 200 400 600 800
BOTSCALE_MINORS = 4 # 20, 40, 60, 80
BOTSCALE_START = 125.
BOTSCALE_END = 55.

FILE="meterscale-ps1l.svg"

def tick_coords (cx, cy, radius, length, angle):
    # Returns (x1, y1, x2, y2)
    
    # (x1, y1) is on the arc
    x1 = radius * math.cos (math.radians (angle)) + cx
    y1 = radius * -math.sin (math.radians (angle)) + cy

    # (x2, y2) extends outward
    x2 = (radius + length) * math.cos (math.radians (angle)) + cx
    y2 = (radius + length) * -math.sin (math.radians (angle)) + cy

    return (x1, y1, x2, y2)

def tick_line (x1, y1, x2, y2):
    return ('<line x1="%f" y1="%f" x2="%f" y2="%f" ' + 
            'style="stroke:black;stroke-width:2;" />\n') % (
                    x1, y1, x2, y2)

def do_scale (majors, minors, start, end, majlen, minlen, f):
    span = end - start
    each_span = span / majors
    minor_span = each_span / (minors + 1)
    print each_span, minor_span
    for i in range (majors + 1):
        angle = start + (i * each_span)
        coords = tick_coords (70, 111, 83.3, majlen, angle)
        line = tick_line (*coords)
        f.write (line)

        if i < majors:
            for j in range (1, minors + 1):
                min_angle = angle + (j * minor_span)
                coords = tick_coords (70, 111, 83.3, minlen, min_angle)
                line = tick_line (*coords)
                f.write (line)

with open (FILE, 'w') as f:
    f.write (HEAD)
    f.write (ARC)

    # Top scale
    do_scale (TOPSCALE_MAJORS, TOPSCALE_MINORS,
                TOPSCALE_START, TOPSCALE_END, 10, 6, f)

    # Bottom scale
    do_scale (BOTSCALE_MAJORS, BOTSCALE_MINORS,
                BOTSCALE_START, BOTSCALE_END, -10, -6, f)

    f.write (FOOT)
