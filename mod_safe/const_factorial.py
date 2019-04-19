#!/usr/bin/env python
# -*- coding: utf-8 -*-

# NOTE: See https://oeis.org/A000142 for a handy sequence on the limits of the
#       factorial function for different types and kinds.

# Import modules ...
import math

# Open output file ...
with open("const_factorial.inc", "wt") as fobj:
    # Loop over all integer kinds (and their limits) that are defined in ISO_FORTRAN_ENV ...
    for info in [(8, 5), (16, 7), (32, 12), (64, 20)]:
        # Start declaration ...
        fobj.write(
            "{:80s}:: const_factorial_INT{:d} = (/ &\n".format(
                "INTEGER(kind = INT{:d}), DIMENSION(0:{:d}), PARAMETER".format(info[0], info[1]),
                info[0]
            )
        )

        # Loop over factorials ...
        for i in xrange(info[1] + 1):
            # Populate declaration ...
            if i == info[1]:
                fobj.write(84 * " " + "{:d}_INT{:d} &\n".format(math.factorial(i), info[0]))
            else:
                fobj.write(84 * " " + "{:d}_INT{:d}, &\n".format(math.factorial(i), info[0]))

        # Finish declaration ...
        fobj.write(80 * " " + "/)\n")

    # **************************************************************************

    # Loop over all real kinds (and their limits) that are defined in ISO_FORTRAN_ENV ...
    for info in [(32, 34), (64, 170), (128, 1754)]:
        # Start declaration ...
        fobj.write(
            "{:80s}:: const_factorial_REAL{:d} = (/ &\n".format(
                "REAL(kind = REAL{:d}), DIMENSION(0:{:d}), PARAMETER".format(info[0], info[1]),
                info[0]
            )
        )

        # Loop over factorials ...
        for i in xrange(info[1] + 1):
            # Populate declaration ...
            if i == info[1]:
                fobj.write(84 * " " + "{:d}.0e0_REAL{:d} &\n".format(math.factorial(i), info[0]))
            else:
                fobj.write(84 * " " + "{:d}.0e0_REAL{:d}, &\n".format(math.factorial(i), info[0]))

        # Finish declaration ...
        fobj.write(80 * " " + "/)\n")
