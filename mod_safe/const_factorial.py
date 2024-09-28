#!/usr/bin/env python3

# Use the proper idiom in the main module ...
# NOTE: See https://docs.python.org/3.12/library/multiprocessing.html#the-spawn-and-forkserver-start-methods
if __name__ == "__main__":
    # NOTE: See https://oeis.org/A000142 for a handy sequence on the limits of
    #       the factorial function for different types and kinds.
    # NOTE: See https://oeis.org/A152909 for another handy sequence on the
    #       limits of the factorial function for different types and kinds.

    # Import standard modules ...
    import math
    import os
    import sys

    # Increase the maximum length of an integer string ...
    # NOTE: See https://docs.python.org/3/library/stdtypes.html#integer-string-conversion-length-limitation
    sys.set_int_max_str_digits(5000)

    # Define function ...
    def hack(num, sig, /):
        # This function accepts an integer ("num") that is to be represented in
        # a string using scientific notation with "sig" significant figures in
        # the mantissa and 4 significant figures in the exponent.

        # Check input ...
        if not isinstance(num, int):
            raise Exception("the first argument needs to be an \"int\"") from None
        if num <= 0:
            raise Exception("the first argument needs to be positive") from None
        if not isinstance(sig, int):
            raise Exception("the second argument needs to be an \"int\"") from None
        if sig <= 0:
            raise Exception("the second argument needs to be positive") from None

        # Import standard modules ...
        import decimal

        # Convert integer to a decimal and find the exponent when expressed in
        # scientific notation ...
        dec = decimal.Decimal(num)
        exp = dec.adjusted()

        # Create string ...
        ans = f"{num:d}"
        if len(ans) > sig:
            ans = ans[:sig]
        else:
            while len(ans) < sig:
                ans += "0"
        ans = f"{ans[0]}.{ans[1:]}e+{exp:04d}"

        # Return answer ...
        return ans

    # Make target folder ...
    if not os.path.exists("const_factorial"):
        os.mkdir("const_factorial")

    # Loop over all integer kinds (and their limits) that are defined in
    # ISO_FORTRAN_ENV ...
    for kind, limit in [(8, 5), (16, 7), (32, 12), (64, 20)]:
        # Open output file ...
        with open(f"const_factorial/const_factorial_INT{kind:d}.f90", "wt", encoding = "utf-8") as fObj:
            # Start declaration ...
            lhs = f"INTEGER(kind = INT{kind:d}), DIMENSION(0:{limit:d}), PARAMETER"
            fObj.write(f"{lhs:80s}:: const_factorial_INT{kind:d} = (/ &\n")

            # Loop over factorials ...
            for i in range(limit + 1):
                # Populate declaration ...
                if i == limit:
                    fObj.write(f'{84 * " "}{math.factorial(i):d}_INT{kind:d}  &\n')
                else:
                    fObj.write(f'{84 * " "}{math.factorial(i):d}_INT{kind:d}, &\n')

            # Finish declaration ...
            fObj.write(f'{80 * " "}/)\n')

    # **************************************************************************

    # Loop over all real kinds (and their limits and precisions) that are
    # defined in ISO_FORTRAN_ENV ...
    for kind, limit, prec in [(32, 34, 7), (64, 170, 16), (128, 1754, 33)]:
        # Open output file ...
        with open(f"const_factorial/const_factorial_REAL{kind:d}.f90", "wt", encoding = "utf-8") as fObj:
            # Start declaration ...
            lhs = f"REAL(kind = REAL{kind:d}), DIMENSION(0:{limit:d}), PARAMETER"
            fObj.write(f"{lhs:80s}:: const_factorial_REAL{kind:d} = (/ &\n")

            # Loop over factorials ...
            for i in range(limit + 1):
                # Populate declaration ...
                if i == limit:
                    fObj.write(f'{84 * " "}{hack(math.factorial(i), prec)}_REAL{kind:d}  &\n')
                else:
                    fObj.write(f'{84 * " "}{hack(math.factorial(i), prec)}_REAL{kind:d}, &\n')

            # Finish declaration ...
            fObj.write(f'{80 * " "}/)\n')
