#!/usr/bin/env python3

# Import special modules ...
try:
    import matplotlib
    matplotlib.use("Agg")                                                       # NOTE: https://matplotlib.org/gallery/user_interfaces/canvasagg.html
    import matplotlib.pyplot
except:
    raise Exception("\"matplotlib\" is not installed; run \"pip install --user matplotlib\"")

# Open output file ...
with open("const_cm.f90", "wt") as fobj:
    # Start declaration ...
    fobj.write("CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_fire = (/ &\n")

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
    fobj.write("CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_jet = (/ &\n")

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

    # **************************************************************************

    # Start declaration ...
    # NOTE: This colour will go from (0,255,0) to (0,0,255).
    fobj.write("CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_g2b = (/ &\n")

    # Loop over levels ...
    for i in range(256):
        # Find colour values in the range [0, 255] ...
        r = 0.0
        g = float(255 - i)
        b = float(i)

        # Write colour values ...
        if i == 255:
            fobj.write(84 * " " + "ACHAR({:3.0f}) // ACHAR({:3.0f}) // ACHAR({:3.0f})  &\n".format(r, g, b))
        else:
            fobj.write(84 * " " + "ACHAR({:3.0f}) // ACHAR({:3.0f}) // ACHAR({:3.0f}), &\n".format(r, g, b))

    # Finish declaration ...
    fobj.write(80 * " " + "/)\n")

    # **************************************************************************

    # Start declaration ...
    # NOTE: This colour will go from (255,0,0) to (0,255,0).
    fobj.write("CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_r2g = (/ &\n")

    # Loop over levels ...
    for i in range(256):
        # Find colour values in the range [0, 255] ...
        r = float(255 - i)
        g = float(i)
        b = 0.0

        # Write colour values ...
        if i == 255:
            fobj.write(84 * " " + "ACHAR({:3.0f}) // ACHAR({:3.0f}) // ACHAR({:3.0f})  &\n".format(r, g, b))
        else:
            fobj.write(84 * " " + "ACHAR({:3.0f}) // ACHAR({:3.0f}) // ACHAR({:3.0f}), &\n".format(r, g, b))

    # Finish declaration ...
    fobj.write(80 * " " + "/)\n")

    # **************************************************************************

    # Start declaration ...
    # NOTE: This colour will go from (255,0,0) to (255,127,0) to (0,255,0).
    fobj.write("CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_r2o2g = (/ &\n")

    # Loop over levels ...
    for i in range(256):
        # Find colour values in the range [0, 255] ...
        if i <= 127:
            r = 255
        else:
            r = float(255 - 2 * (i - 127) + 1)
        g = float(i)
        b = 0.0

        # Write colour values ...
        if i == 255:
            fobj.write(84 * " " + "ACHAR({:3.0f}) // ACHAR({:3.0f}) // ACHAR({:3.0f})  &\n".format(r, g, b))
        else:
            fobj.write(84 * " " + "ACHAR({:3.0f}) // ACHAR({:3.0f}) // ACHAR({:3.0f}), &\n".format(r, g, b))

    # Finish declaration ...
    fobj.write(80 * " " + "/)\n")
