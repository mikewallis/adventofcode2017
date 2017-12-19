#!/usr/bin/python
# day3
# spiral coordinate maths, yikes

import sys
from collections import namedtuple
from math import ceil, floor, log10, sqrt

from itertools import count

input = int(sys.argv[1])
spacing = len(sys.argv[1])
print 'input is:', str(input),'spaced out', str(spacing)

# 2d array

Step = namedtuple("Step", ["dx", "dy"])
RIGHT = Step( int(spacing),  0)
DOWN  = Step( 0,  1)
LEFT  = Step(-int(spacing),  0)
UP    = Step( 0, -1)


