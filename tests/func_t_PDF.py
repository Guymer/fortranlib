#!/usr/bin/env python3

# Import standard modules ...
import math
import sys

# Import special modules ...
try:
    import scipy
except:
    raise Exception("\"scipy\" is not installed; run \"pip install --user scipy\"") from None

# Import local modules ...
sys.path.append("..")
from mod_f2py import mod_f2py                                                   # pylint: disable=E0401

# Define function ...
def t_PDF(x, dof, /):
    """This function calculates the PDF of Student's t-distribution in the same
    way as the FORTRAN function in this repository.
    """

    # Check if the supplied number of degrees of freedom is a special case and
    # return a short-cut if it is (see the "Special Cases" section of the
    # Wikipedia article) ...
    if dof <= 0.0:
        # Set value ...
        ans = 0.0
    elif dof == 1.0:
        # Set value ...
        ans = 1.0 / (math.pi * (1.0 + x ** 2))
    elif dof == 2.0:
        # Set value ...
        ans = 1.0 / (2.0 * math.sqrt(2.0) * (1.0 + x ** 2 / 2.0) ** 1.5)
    elif dof == 3.0:
        # Set value ...
        ans = 2.0 / (math.pi * math.sqrt(3.0) * (1.0 + x ** 2 / 3.0) ** 2)
    elif dof == 4.0:
        # Set value ...
        ans = 3.0 / (8.0 * (1.0 + x ** 2 / 4.0) ** 2.5)
    elif dof == 5.0:
        # Set value ...
        ans = 8.0 / (3.0 * math.pi * math.sqrt(5.0) * (1.0 + x ** 2 / 5.0) ** 3)
    else:
        # Create short-hand ...
        dofp1 = dof + 1.0

        # Calculate PDF ...
        ans = math.gamma(dofp1 / 2.0) * ((1.0 + (x ** 2 / dof)) ** (- dofp1 / 2.0)) / (math.sqrt(dof * math.pi) * math.gamma(dof / 2.0))

    # Return answer ...
    return ans

# Use the proper idiom in the main module ...
# NOTE: See https://docs.python.org/3.12/library/multiprocessing.html#the-spawn-and-forkserver-start-methods
if __name__ == "__main__":
    # Loop over number of degrees of freedom ...
    for i in range(1, 7):
        # Loop over t values ...
        for j in range(-4, +5):
            # Create short-hands ...
            val1 = scipy.stats.t.pdf(float(j), float(i))
            val2 = t_PDF(float(j), float(i))
            val3 = mod_f2py.sub_t_pdf(float(j), float(i))
            dif2 = 100.0 * (val2 - val1) / val1                                 # [%]
            dif3 = 100.0 * (val3 - val1) / val1                                 # [%]

            print(f"dof = {i:d}    t = {j:+2d}    SciPy = {val1:8.6f}    Python = {val2:8.6f} ({dif2:+9.6f}%)    FORTRAN = {val3:8.6f} ({dif3:+9.6f}%)")
