#!/usr/bin/env python3

# Use the proper idiom in the main module ...
# NOTE: See https://docs.python.org/3.12/library/multiprocessing.html#the-spawn-and-forkserver-start-methods
if __name__ == "__main__":
    # Import special modules ...
    try:
        import matplotlib
        matplotlib.rcParams.update(
            {
                       "backend" : "Agg",                                       # NOTE: See https://matplotlib.org/stable/gallery/user_interfaces/canvasagg.html
                    "figure.dpi" : 300,
                "figure.figsize" : (9.6, 7.2),                                  # NOTE: See https://github.com/Guymer/misc/blob/main/README.md#matplotlib-figure-sizes
                     "font.size" : 8,
            }
        )
        import matplotlib.pyplot
    except:
        raise Exception("\"matplotlib\" is not installed; run \"pip install --user matplotlib\"") from None

    # Open output file ...
    with open("const_cm.f90", "wt", encoding = "utf-8") as fObj:
        # Start declaration ...
        fObj.write("CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_fire = (/ &\n")

        # Loop over levels ...
        for i in range(256):
            # Find colour values and convert them to the range [0, 255] ...
            r, g, b, a = matplotlib.colormaps["gnuplot"](float(i) / 255.0)
            r *= 255.0
            g *= 255.0
            b *= 255.0

            # Write colour values ...
            if i == 255:
                fObj.write(f'{84 * " "}ACHAR({r:3.0f}) // ACHAR({g:3.0f}) // ACHAR({b:3.0f})  &\n')
            else:
                fObj.write(f'{84 * " "}ACHAR({r:3.0f}) // ACHAR({g:3.0f}) // ACHAR({b:3.0f}), &\n')

        # Finish declaration ...
        fObj.write(f'{80 * " "}/)\n')

        # **********************************************************************

        # Start declaration ...
        fObj.write("CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_jet = (/ &\n")

        # Loop over levels ...
        for i in range(256):
            # Find colour values and convert them to the range [0, 255] ...
            r, g, b, a = matplotlib.colormaps["jet"](float(i) / 255.0)
            r *= 255.0
            g *= 255.0
            b *= 255.0

            # Write colour values ...
            if i == 255:
                fObj.write(f'{84 * " "}ACHAR({r:3.0f}) // ACHAR({g:3.0f}) // ACHAR({b:3.0f})  &\n')
            else:
                fObj.write(f'{84 * " "}ACHAR({r:3.0f}) // ACHAR({g:3.0f}) // ACHAR({b:3.0f}), &\n')

        # Finish declaration ...
        fObj.write(f'{80 * " "}/)\n')

        # **********************************************************************

        # Start declaration ...
        # NOTE: This colour map will go from (0,255,0) to (0,0,255).
        fObj.write("CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_g2b = (/ &\n")

        # Loop over levels ...
        for i in range(256):
            # Find colour values in the range [0, 255] ...
            r = 0.0
            g = float(255 - i)
            b = float(i)

            # Write colour values ...
            if i == 255:
                fObj.write(f'{84 * " "}ACHAR({r:3.0f}) // ACHAR({g:3.0f}) // ACHAR({b:3.0f})  &\n')
            else:
                fObj.write(f'{84 * " "}ACHAR({r:3.0f}) // ACHAR({g:3.0f}) // ACHAR({b:3.0f}), &\n')

        # Finish declaration ...
        fObj.write(f'{80 * " "}/)\n')

        # **********************************************************************

        # Start declaration ...
        # NOTE: This colour map will go from (255,0,0) to (0,255,0).
        fObj.write("CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_r2g = (/ &\n")

        # Loop over levels ...
        for i in range(256):
            # Find colour values in the range [0, 255] ...
            r = float(255 - i)
            g = float(i)
            b = 0.0

            # Write colour values ...
            if i == 255:
                fObj.write(f'{84 * " "}ACHAR({r:3.0f}) // ACHAR({g:3.0f}) // ACHAR({b:3.0f})  &\n')
            else:
                fObj.write(f'{84 * " "}ACHAR({r:3.0f}) // ACHAR({g:3.0f}) // ACHAR({b:3.0f}), &\n')

        # Finish declaration ...
        fObj.write(f'{80 * " "}/)\n')

        # **********************************************************************

        # Start declaration ...
        # NOTE: This colour map will go from (255,0,0) to (255,127,0) to (0,255,0).
        fObj.write("CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_r2o2g = (/ &\n")

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
                fObj.write(f'{84 * " "}ACHAR({r:3.0f}) // ACHAR({g:3.0f}) // ACHAR({b:3.0f})  &\n')
            else:
                fObj.write(f'{84 * " "}ACHAR({r:3.0f}) // ACHAR({g:3.0f}) // ACHAR({b:3.0f}), &\n')

        # Finish declaration ...
        fObj.write(f'{80 * " "}/)\n')
