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

    # **************************************************************************

    # Open output file ...
    with open("const_cm.f90", "wt", encoding = "utf-8") as fObj:
        # Loop over MatPlotLib colour map names ...
        # NOTE: See https://matplotlib.org/stable/users/explain/colors/colormaps.html
        for name in [
            "viridis",                  # Perceptually uniform sequential colour map.
            "plasma",                   # Perceptually uniform sequential colour map.
            "inferno",                  # Perceptually uniform sequential colour map.
            "magma",                    # Perceptually uniform sequential colour map.
            "cividis",                  # Perceptually uniform sequential colour map.
            "coolwarm",                 # A replacement for "bwr" which has smooth lightness.
            "turbo",                    # A replacement for "jet" which has smooth lightness.
        ]:
            # Check MatPlotLib colour map ...
            assert matplotlib.colormaps[name].N == 256, f"the MatPlotLib colour map \"{name}\" has {matplotlib.colormaps[name].N:d} colours"

            # Start declaration ...
            paddedName = f"{name} = (/"
            fObj.write(f"CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_{paddedName:32s}&\n")

            # Loop over levels ...
            for i in range(256):
                # Find colour values ...
                r, g, b, _ = matplotlib.colormaps[name](i, bytes = True)

                # Write colour values ...
                if i == 255:
                    fObj.write(f'{84 * " "}ACHAR({r:3d}) // ACHAR({g:3d}) // ACHAR({b:3d})  &\n')
                else:
                    fObj.write(f'{84 * " "}ACHAR({r:3d}) // ACHAR({g:3d}) // ACHAR({b:3d}), &\n')

            # Finish declaration ...
            fObj.write(f'{80 * " "}/)\n')

        # **********************************************************************

        # Start declaration ...
        # NOTE: This colour map will go from (0,255,0) to (0,0,255).
        fObj.write("CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_g2b = (/                        &\n")

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
        fObj.write("CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_r2g = (/                        &\n")

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
        fObj.write("CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_r2o2g = (/                      &\n")

        # Loop over levels ...
        for i in range(256):
            # Find colour values in the range [0, 255] ...
            if i <= 127:
                r = 255.0
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

        # **********************************************************************

        # Start declaration ...
        # NOTE: This colour map will go from (0,0,0) to (255,255,255).
        fObj.write("CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_grey = (/                       &\n")

        # Loop over levels ...
        for i in range(256):
            # Find colour values in the range [0, 255] ...
            r = float(i)
            g = float(i)
            b = float(i)

            # Write colour values ...
            if i == 255:
                fObj.write(f'{84 * " "}ACHAR({r:3.0f}) // ACHAR({g:3.0f}) // ACHAR({b:3.0f})  &\n')
            else:
                fObj.write(f'{84 * " "}ACHAR({r:3.0f}) // ACHAR({g:3.0f}) // ACHAR({b:3.0f}), &\n')

        # Finish declaration ...
        fObj.write(f'{80 * " "}/)\n')
