#!/usr/bin/env python3

# Import special modules ...
try:
    import matplotlib
    matplotlib.use("Agg")                                                       # NOTE: http://matplotlib.org/faq/howto_faq.html#matplotlib-in-a-web-application-server
    import matplotlib.pyplot
except:
    raise Exception("\"matplotlib\" is not installed; run \"pip install --user matplotlib\"")

# Open output file ...
with open("const_cm.f90", "wt") as fobj:
    # Start declaration ...
    fobj.write("CHARACTER(len = 3), DIMENSION(256), PARAMETER                                :: const_cm_fire = (/ &\n")

    # Loop over levels ...
    for i in range(256):
        # Find colour values and convert them to the range [0, 255] ...
        r, g, b, a = matplotlib.pyplot.cm.gnuplot(float(i) / 255.0)
        r *= 255.0
        g *= 255.0
        b *= 255.0

        # Write colour values ...
        if i == 255:
            fobj.write(84 * " " + "ACHAR({:3.0f}) // ACHAR({:3.0f}) // ACHAR({:3.0f})  &\n".format(r, g, b))
        else:
            fobj.write(84 * " " + "ACHAR({:3.0f}) // ACHAR({:3.0f}) // ACHAR({:3.0f}), &\n".format(r, g, b))

    # Finish declaration ...
    fobj.write(80 * " " + "/)\n")

    # **************************************************************************

    # Start declaration ...
    fobj.write("CHARACTER(len = 3), DIMENSION(256), PARAMETER                                :: const_cm_jet = (/ &\n")

    # Loop over levels ...
    for i in range(256):
        # Find colour values and convert them to the range [0, 255] ...
        r, g, b, a = matplotlib.pyplot.cm.jet(float(i) / 255.0)
        r *= 255.0
        g *= 255.0
        b *= 255.0

        # Write colour values ...
        if i == 255:
            fobj.write(84 * " " + "ACHAR({:3.0f}) // ACHAR({:3.0f}) // ACHAR({:3.0f})  &\n".format(r, g, b))
        else:
            fobj.write(84 * " " + "ACHAR({:3.0f}) // ACHAR({:3.0f}) // ACHAR({:3.0f}), &\n".format(r, g, b))

    # Finish declaration ...
    fobj.write(80 * " " + "/)\n")
