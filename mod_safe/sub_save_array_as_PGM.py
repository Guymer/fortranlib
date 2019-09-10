#!/usr/bin/env python3

# Import modules ...
import os

# Make target folder ...
if not os.path.exists("sub_save_array_as_PGM"):
    os.makedirs("sub_save_array_as_PGM")

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
        raise Exception("\"typ\" was not an expected value", typ)

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
            raise Exception("\"typ\" was not an expected value", typ)

        # Create source ...
        src = (
            "!> @brief This subroutine saves a 2D {1:s} {0:s} array to a PGM file.\n"
            "!>\n"
            "!> @param[in] arr The 2D {1:s} {0:s} array to be saved to a PGM file\n"
            "!>\n"
            "!> @param[in] fname The name of the PGM file\n"
            "!>\n"
            "!> @warning \"array\" must have sizes less than or equal to 99999\n"
            "!>\n"
            "!> @warning values below 0 in \"array\" will be clipped to 0\n"
            "!>\n"
            "!> @warning values above {2:d} in \"array\" will be clipped to {2:d}\n"
            "!>\n"
            "\n"
            "SUBROUTINE sub_save_2D_{1:s}_{0:s}_array_as_PGM(arr, fname)\n"
            "    USE ISO_FORTRAN_ENV\n"
            "\n"
            "    IMPLICIT NONE\n"
            "\n"
            "    ! Declare inputs/outputs ...\n"
            "    CHARACTER(len = *), INTENT(in)                                              :: fname\n"
            "    {3:76s}:: arr\n"
            "\n"
            "    ! Declare FORTRAN variables ...\n"
            "    CHARACTER(len = 256)                                                        :: errmsg\n"
            "    INTEGER(kind = INT32)                                                       :: errnum\n"
            "    INTEGER(kind = INT32)                                                       :: funit\n"
            "\n"
            "    ! Declare internal variables ...\n"
            "    CHARACTER(len = 1), ALLOCATABLE, DIMENSION(:, :)                            :: img\n"
            "    CHARACTER(len = 19)                                                         :: hdr\n"
            "    INTEGER(kind = INT64)                                                       :: ix\n"
            "    INTEGER(kind = INT64)                                                       :: iy\n"
            "    INTEGER(kind = INT64)                                                       :: lvl\n"
            "    INTEGER(kind = INT64)                                                       :: nx\n"
            "    INTEGER(kind = INT64)                                                       :: ny\n"
            "\n"
            "    ! Find size of image ...\n"
            "    nx = SIZE(arr, dim = 1, kind = INT64)\n"
            "    ny = SIZE(arr, dim = 2, kind = INT64)\n"
            "\n"
            "    ! Make header ...\n"
            "    WRITE(hdr, fmt = '(\"P5 \", i5, \" \", i5, \" 255 \")') nx, ny\n"
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
            "            img(ix, iy) = CHAR(lvl)\n"
            "        END DO\n"
            "    END DO\n"
            "\n"
            "    ! Open PGM ...\n"
            "    OPEN(access = \"stream\", action = \"write\", file = TRIM(fname), form = \"unformatted\", iomsg = errmsg, iostat = errnum, newunit = funit, status = \"replace\")\n"
            "    IF(errnum /= 0_INT32)THEN\n"
            "        WRITE(fmt = '(\"ERROR: \", a, \". ERRMSG = \", a, \". ERRNUM = \", i3, \".\")', unit = ERROR_UNIT) \"Failed to open PGM\", TRIM(errmsg), errnum\n"
            "        FLUSH(unit = ERROR_UNIT)\n"
            "        STOP\n"
            "    END IF\n"
            "\n"
            "    ! Write out header and image ...\n"
            "    WRITE(unit = funit) hdr\n"
            "    WRITE(unit = funit) img\n"
            "\n"
            "    ! Close PGM ...\n"
            "    CLOSE(unit = funit)\n"
            "\n"
            "    ! Clean up ...\n"
            "    DEALLOCATE(img)\n"
            "END SUBROUTINE sub_save_2D_{1:s}_{0:s}_array_as_PGM\n"
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
        open("sub_save_array_as_PGM/sub_save_2D_{1:s}_{0:s}_array_as_PGM.f90".format(typ, knd), "wt").write(src)

# Open output file ...
with open("sub_save_array_as_PGM.tmp", "wt") as fobj:
    # Write out interfaces and includes ...
    fobj.write("INTERFACE sub_save_array_as_PGM\n")
    for typ in sorted(data.keys()):
        for knd in data[typ]:
            fobj.write("    MODULE PROCEDURE sub_save_2D_{1:s}_{0:s}_array_as_PGM\n".format(typ, knd))
    fobj.write("END INTERFACE sub_save_array_as_PGM\n")
    fobj.write("\n")
    for typ in sorted(data.keys()):
        for knd in data[typ]:
            fobj.write("INCLUDE \"mod_safe/sub_save_array_as_PGM/sub_save_2D_{1:s}_{0:s}_array_as_PGM.f90\"\n".format(typ, knd))
