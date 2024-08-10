#!/usr/bin/env python3

# Import standard modules ...
import math

# Import special modules ...
try:
    import scipy
except:
    raise Exception("\"scipy\" is not installed; run \"pip install --user scipy\"") from None

# Define function ...
def t_CDF(x, dof):
    """This function calculates the CDF of Student's t-distribution in the same
    way as the FORTRAN function in this repository.
    """

    # Declare constants ...
    a = 0.5
    c = 1.5

    # Check if the supplied number of degrees of freedom is a special case and
    # return a short-cut if it is (see the "Special Cases" section of the
    # Wikipedia article) ...
    if dof <= 0.0:
        # Set value ...
        ans = 0.0
    elif dof == 1.0:
        # Set value ...
        ans = 0.5 + math.atan(x) / math.pi
    elif dof == 2.0:
        # Set value ...
        ans = 0.5 + x / (2.0 * math.sqrt(2.0) * math.sqrt(1.0 + 0.5 * x ** 2))
    elif dof == 3.0:
        # Set value ...
        ans = 0.5 + ((x / (math.sqrt(3.0) * (1.0 + (x ** 2) / 3.0))) + math.atan(x / math.sqrt(3.0))) / math.pi
    elif dof == 4.0:
        # Set value ...
        ans = 0.5 + 3.0 * (x / math.sqrt(1.0 + (x ** 2) / 4.0)) * (1.0 - (x ** 2) / (12.0 * (1.0 + (x ** 2) / 4.0))) / 8.0
    elif dof == 5.0:
        # Set value ...
        ans = 0.5 + ((x / (math.sqrt(5.0) * (1.0 + x ** 2 / 5.0))) * (1.0 + 2.0 / (3.0 * (1.0 + x ** 2 / 5.0))) + math.atan(x / math.sqrt(5.0))) / math.pi
    else:
        # Create short-hands ...
        dofp1 = dof + 1.0
        b = 0.5 * dofp1
        z = - (x ** 2 / dof)

        # Calculate CDF ...
        ans = a + x * math.gamma(b) * scipy.special.hyp2f1(a, b, c, z) / (math.sqrt(dof * math.pi) * math.gamma(0.5 * dof))

    # Return answer ...
    return ans

# Use the proper idiom in the main module ...
# NOTE: See https://docs.python.org/3.11/library/multiprocessing.html#the-spawn-and-forkserver-start-methods
if __name__ == "__main__":
    # Loop over number of degrees of freedom ...
    for i in range(1, 7):
        # Loop over t values ...
        for j in range(-4, +5):
            # Create short-hands ...
            val1 = scipy.stats.t.cdf(float(j), float(i))
            val2 = t_CDF(float(j), float(i))
            diff = 100.0 * (val2 - val1) / val1                                 # [%]

            print(f"dof = {i:d}    t = {j:+2d}    SciPy = {val1:8.6f}    fortranlib = {val2:8.6f}    % diff = {diff:+9.6f}%")
