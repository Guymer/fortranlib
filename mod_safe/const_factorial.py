#!/usr/bin/env python3

# Use the proper idiom in the main module ...
# NOTE: See https://docs.python.org/3.8/library/multiprocessing.html#multiprocessing-programming
if __name__ == "__main__":
    # NOTE: See https://oeis.org/A000142 for a handy sequence on the limits of
    #       the factorial function for different types and kinds.
    # https://oeis.org/A152909

    # Import standard modules ...
    import math

    # Define functions ...
    def hack(num, sig):
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
        ans = "{:d}".format(num)
        if len(ans) > sig:
            ans = ans[:sig]
        else:
            while len(ans) < sig:
                ans += "0"
        ans = ans[0] + "." + ans[1:] + "e+{:04d}".format(exp)

        # Return answer ...
        return ans

    # Open output file ...
    with open("const_factorial.f90", "wt") as fobj:
        # Loop over all integer kinds (and their limits) that are defined in
        # ISO_FORTRAN_ENV ...
        for kind, limit in [(8, 5), (16, 7), (32, 12), (64, 20)]:
            # Start declaration ...
            fobj.write(
                "{:80s}:: const_factorial_INT{:d} = (/ &\n".format(
                    "INTEGER(kind = INT{:d}), DIMENSION(0:{:d}), PARAMETER".format(kind, limit),
                    kind
                )
            )

            # Loop over factorials ...
            for i in range(limit + 1):
                # Populate declaration ...
                if i == limit:
                    fobj.write(84 * " " + "{:d}_INT{:d}  &\n".format(math.factorial(i), kind))
                else:
                    fobj.write(84 * " " + "{:d}_INT{:d}, &\n".format(math.factorial(i), kind))

            # Finish declaration ...
            fobj.write(80 * " " + "/)\n")

        # **********************************************************************

        # Loop over all real kinds (and their limits and precisions) that are
        # defined in ISO_FORTRAN_ENV ...
        for kind, limit, prec in [(32, 34, 7), (64, 170, 16), (128, 1754, 33)]:
            # Start declaration ...
            fobj.write(
                "{:80s}:: const_factorial_REAL{:d} = (/ &\n".format(
                    "REAL(kind = REAL{:d}), DIMENSION(0:{:d}), PARAMETER".format(kind, limit),
                    kind
                )
            )

            # Loop over factorials ...
            for i in range(limit + 1):
                # Populate declaration ...
                if i == limit:
                    fobj.write(84 * " " + "{:s}_REAL{:d}  &\n".format(hack(math.factorial(i), prec), kind))
                else:
                    fobj.write(84 * " " + "{:s}_REAL{:d}, &\n".format(hack(math.factorial(i), prec), kind))

            # Finish declaration ...
            fobj.write(80 * " " + "/)\n")
