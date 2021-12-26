#!/usr/bin/env python3

# Use the proper idiom in the main module ...
# NOTE: See https://docs.python.org/3.8/library/multiprocessing.html#multiprocessing-programming
if __name__ == "__main__":
    # Import standard modules ...
    import os

    # Make target folder ...
    if not os.path.exists("sub_save_array_as_PPM"):
        os.makedirs("sub_save_array_as_PPM")

    # Define types and kinds ...
    data = {
        "integer" : [  "INT8",  "INT16",   "INT32", "INT64"],
           "real" : ["REAL32", "REAL64", "REAL128"         ]
    }

    # Loop over types ...
    for typ in sorted(data.keys()):
        # Create assignment ...
        if typ == "integer":
            lim = 255
        elif typ == "real":
            lim = 1
        else:
            raise Exception("\"typ\" was not an expected value", typ) from None

        # Loop over kinds ...
        for knd in data[typ]:
            # Create assignment ...
            if typ == "integer":
                if knd == "INT64":
                    ass = "MAX(0_INT64, MIN(255_INT64, arr(ix, iy)))"
                else:
                    ass = "MAX(0_INT64, MIN(255_INT64, INT(arr(ix, iy), kind = INT64)))"
            elif typ == "real":
                ass = "MAX(0_INT64, MIN(255_INT64, NINT(255.0e0_{0:s} * arr(ix, iy), kind = INT64)))".format(knd)
            else:
                raise Exception("\"typ\" was not an expected value", typ) from None

            # Create source ...
            src = (
                "!> @brief This subroutine saves a 2D {1:s} {0:s} array to a PPM file.\n"
                "!>\n"
                "!> @param[in] arr The 2D {1:s} {0:s} array to be saved to a PPM file\n"
                "!>\n"
                "!> @param[in] fname The name of the PPM file\n"
                "!>\n"
                "!> @param[in] cm The name of the colour map to use\n"
                "!>\n"
                "!> @warning \"arr\" must have sizes less than or equal to 99999\n"
                "!>\n"
                "!> @warning values below 0 in \"arr\" will be clipped to 0\n"
                "!>\n"
                "!> @warning values above {2:d} in \"arr\" will be clipped to {2:d}\n"
                "!>\n"
                "\n"
                "SUBROUTINE sub_save_2D_{1:s}_{0:s}_array_as_PPM(arr, fname, cm)\n"
                "    USE ISO_FORTRAN_ENV\n"
                "\n"
                "    IMPLICIT NONE\n"
                "\n"
                "    ! Declare inputs/outputs ...\n"
                "    CHARACTER(len = *), INTENT(in)                                              :: cm\n"
                "    CHARACTER(len = *), INTENT(in)                                              :: fname\n"
                "    {3:76s}:: arr\n"
                "\n"
                "    ! Declare FORTRAN variables ...\n"
                "    CHARACTER(len = 256)                                                        :: errmsg\n"
                "    INTEGER(kind = INT32)                                                       :: errnum\n"
                "    INTEGER(kind = INT32)                                                       :: funit\n"
                "\n"
                "    ! Declare internal variables ...\n"
                "    CHARACTER(len = 3), ALLOCATABLE, DIMENSION(:, :)                            :: img\n"
                "    CHARACTER(len = 19)                                                         :: hdr\n"
                "    INTEGER(kind = INT64)                                                       :: ix\n"
                "    INTEGER(kind = INT64)                                                       :: iy\n"
                "    INTEGER(kind = INT64)                                                       :: lvl\n"
                "    INTEGER(kind = INT64)                                                       :: nx\n"
                "    INTEGER(kind = INT64)                                                       :: ny\n"
                "\n"
                "    ! Check input ...\n"
                "    IF(TRIM(cm) /= \"fire\" .AND. TRIM(cm) /= \"jet\" .AND. TRIM(cm) /= \"g2b\" .AND. TRIM(cm) /= \"r2g\" .AND. TRIM(cm) /= \"r2o2g\")THEN\n"
                "        WRITE(fmt = '(\"ERROR: \", a, \".\")', unit = ERROR_UNIT) \"Not a recognised colour map\"\n"
                "        FLUSH(unit = ERROR_UNIT)\n"
                "        STOP\n"
                "    END IF\n"
                "\n"
                "    ! Find size of image ...\n"
                "    nx = SIZE(arr, dim = 1, kind = INT64)\n"
                "    ny = SIZE(arr, dim = 2, kind = INT64)\n"
                "\n"
                "    ! Make header ...\n"
                "    WRITE(hdr, fmt = '(\"P6 \", i5, \" \", i5, \" 255 \")') nx, ny\n"
                "\n"
                "    ! Allocate image ...\n"
                "    ALLOCATE(img(nx, ny))\n"
                "\n"
                "    ! Loop over x ...\n"
                "    DO ix = 1_INT64, nx\n"
                "        ! Loop over y ...\n"
                "        DO iy = 1_INT64, ny\n"
                "            ! Determine level ...\n"
                "            lvl = {4:s}\n"
                "\n"
                "            ! Set pixel ...\n"
                "            IF(TRIM(cm) == \"fire\")THEN\n"
                "                img(ix, iy) = const_cm_fire(lvl + 1_INT64)\n"
                "            ELSE IF(TRIM(cm) == \"jet\")THEN\n"
                "                img(ix, iy) = const_cm_jet(lvl + 1_INT64)\n"
                "            ELSE IF(TRIM(cm) == \"g2b\")THEN\n"
                "                img(ix, iy) = const_cm_g2b(lvl + 1_INT64)\n"
                "            ELSE IF(TRIM(cm) == \"r2g\")THEN\n"
                "                img(ix, iy) = const_cm_r2g(lvl + 1_INT64)\n"
                "            ELSE IF(TRIM(cm) == \"r2o2g\")THEN\n"
                "                img(ix, iy) = const_cm_r2o2g(lvl + 1_INT64)\n"
                "            END IF\n"
                "        END DO\n"
                "    END DO\n"
                "\n"
                "    ! Open PPM ...\n"
                "    OPEN(access = \"stream\", action = \"write\", file = TRIM(fname), form = \"unformatted\", iomsg = errmsg, iostat = errnum, newunit = funit, status = \"replace\")\n"
                "    IF(errnum /= 0_INT32)THEN\n"
                "        WRITE(fmt = '(\"ERROR: \", a, \". ERRMSG = \", a, \". ERRNUM = \", i3, \".\")', unit = ERROR_UNIT) \"Failed to open PPM\", TRIM(errmsg), errnum\n"
                "        FLUSH(unit = ERROR_UNIT)\n"
                "        STOP\n"
                "    END IF\n"
                "\n"
                "    ! Write out header and image ...\n"
                "    WRITE(unit = funit) hdr\n"
                "    WRITE(unit = funit) img\n"
                "\n"
                "    ! Close PPM ...\n"
                "    CLOSE(unit = funit)\n"
                "\n"
                "    ! Clean up ...\n"
                "    DEALLOCATE(img)\n"
                "END SUBROUTINE sub_save_2D_{1:s}_{0:s}_array_as_PPM\n"
            ).format(
                typ,
                knd,
                lim,
                "{0:s}(kind = {1:s}), DIMENSION(:, :), INTENT(in)".format(
                    typ.upper(),
                    knd
                ),
                ass
            )

            # Save source ...
            with open("sub_save_array_as_PPM/sub_save_2D_{1:s}_{0:s}_array_as_PPM.f90".format(typ, knd), "wt", encoding = "utf-8") as fobj:
                fobj.write(src)

    # Open output file ...
    with open("sub_save_array_as_PPM.tmp", "wt", encoding = "utf-8") as fobj:
        # Write out interfaces and includes ...
        fobj.write("INTERFACE sub_save_array_as_PPM\n")
        for typ in sorted(data.keys()):
            for knd in data[typ]:
                fobj.write("    MODULE PROCEDURE sub_save_2D_{1:s}_{0:s}_array_as_PPM\n".format(typ, knd))
        fobj.write("END INTERFACE sub_save_array_as_PPM\n")
        fobj.write("\n")
        for typ in sorted(data.keys()):
            for knd in data[typ]:
                fobj.write("INCLUDE \"mod_safe/sub_save_array_as_PPM/sub_save_2D_{1:s}_{0:s}_array_as_PPM.f90\"\n".format(typ, knd))
