#!/usr/bin/env python3

# Import modules ...
import os

# Make target folder ...
if not os.path.exists("sub_save_array_as_PBM"):
    os.makedirs("sub_save_array_as_PBM")

# Define types and kinds ...
data = {
    "logical" : [  "INT8",  "INT16",   "INT32", "INT64"]
}

# Loop over types ...
for typ in sorted(data.keys()):
    # Loop over kinds ...
    for knd in data[typ]:
        # Create source ...
        src = (
            "!> @brief This subroutine saves a 2D {1:s} {0:s} array to a PBM file.\n"
            "!>\n"
            "!> @param[in] arr The 2D {1:s} {0:s} array to be saved to a PBM file\n"
            "!>\n"
            "!> @param[in] fname The name of the PBM file\n"
            "!>\n"
            "!> @warning \"arr\" must have sizes less than or equal to 99999\n"
            "!>\n"
            "!> @warning the width of \"arr\" must be an integer multiple of 8\n"
            "!>\n"
            "\n"
            "SUBROUTINE sub_save_2D_{1:s}_{0:s}_array_as_PBM(arr, fname)\n"
            "    USE ISO_FORTRAN_ENV\n"
            "\n"
            "    IMPLICIT NONE\n"
            "\n"
            "    ! Declare inputs/outputs ...\n"
            "    CHARACTER(len = *), INTENT(in)                                              :: fname\n"
            "    {2:76s}:: arr\n"
            "\n"
            "    ! Declare FORTRAN variables ...\n"
            "    CHARACTER(len = 256)                                                        :: errmsg\n"
            "    INTEGER(kind = INT32)                                                       :: errnum\n"
            "    INTEGER(kind = INT32)                                                       :: funit\n"
            "\n"
            "    ! Declare internal variables ...\n"
            "    CHARACTER(len = 15)                                                         :: hdr\n"
            "    INTEGER(kind = INT8), ALLOCATABLE, DIMENSION(:, :)                          :: img\n"
            "    INTEGER(kind = INT64)                                                       :: i\n"
            "    INTEGER(kind = INT64)                                                       :: ixArr\n"
            "    INTEGER(kind = INT64)                                                       :: ixImg\n"
            "    INTEGER(kind = INT64)                                                       :: iyArr\n"
            "    INTEGER(kind = INT64)                                                       :: iyImg\n"
            "    INTEGER(kind = INT64)                                                       :: nxArr\n"
            "    INTEGER(kind = INT64)                                                       :: nxImg\n"
            "    INTEGER(kind = INT64)                                                       :: nyArr\n"
            "    INTEGER(kind = INT64)                                                       :: nyImg\n"
            "\n"
            "    ! Find size of array ...\n"
            "    nxArr = SIZE(arr, dim = 1, kind = INT64)\n"
            "    nyArr = SIZE(arr, dim = 2, kind = INT64)\n"
            "\n"
            "    ! Check array size ...\n"
            "    IF(MOD(nxArr, 8_INT64) /= 0_INT64)THEN\n"
            "        WRITE(fmt = '(\"ERROR: \", a, \".\")', unit = ERROR_UNIT) \"The width of the input array must be an integer multiple of 8\"\n"
            "        FLUSH(unit = ERROR_UNIT)\n"
            "        STOP\n"
            "    END IF\n"
            "\n"
            "    ! Find size of array ...\n"
            "    nxImg = nxArr / 8_INT64\n"
            "    nyImg = nyArr\n"
            "\n"
            "    ! Make header ...\n"
            "    WRITE(hdr, fmt = '(\"P4 \", i5, \" \", i5, \" \")') nxImg, nyImg\n"
            "\n"
            "    ! Allocate image ...\n"
            "    ALLOCATE(img(nxImg, nyImg))\n"
            "\n"
            "    ! Loop over image x ...\n"
            "    DO ixImg = 1_INT64, nxImg\n"
            "        ! Loop over image y ...\n"
            "        DO iyImg = 1_INT64, nyImg\n"
            "            ! Loop over bits ...\n"
            "            DO i = 1_INT64, 8_INT64\n"
            "                ! Determine array x and y ...\n"
            "                ixArr = ixImg * 8_INT64 - (i - 1_INT64)\n"
            "                iyArr = iyImg\n"
            "\n"
            "                ! Check what needs doing ...\n"
            "                IF(arr(ixArr, iyArr))THEN\n"
            "                    ! Set pixel ...\n"
            "                    img(ixImg, iyImg) = IBCLR(img(ixImg, iyImg), i - 1_INT64)\n"
            "                ELSE\n"
            "                    ! Set pixel ...\n"
            "                    img(ixImg, iyImg) = IBSET(img(ixImg, iyImg), i - 1_INT64)\n"
            "                END IF\n"
            "            END DO\n"
            "        END DO\n"
            "    END DO\n"
            "\n"
            "    ! Open PBM ...\n"
            "    OPEN(access = \"stream\", action = \"write\", file = TRIM(fname), form = \"unformatted\", iomsg = errmsg, iostat = errnum, newunit = funit, status = \"replace\")\n"
            "    IF(errnum /= 0_INT32)THEN\n"
            "        WRITE(fmt = '(\"ERROR: \", a, \". ERRMSG = \", a, \". ERRNUM = \", i3, \".\")', unit = ERROR_UNIT) \"Failed to open PBM\", TRIM(errmsg), errnum\n"
            "        FLUSH(unit = ERROR_UNIT)\n"
            "        STOP\n"
            "    END IF\n"
            "\n"
            "    ! Write out header and image ...\n"
            "    WRITE(unit = funit) hdr\n"
            "    WRITE(unit = funit) img\n"
            "\n"
            "    ! Close PBM ...\n"
            "    CLOSE(unit = funit)\n"
            "\n"
            "    ! Clean up ...\n"
            "    DEALLOCATE(img)\n"
            "END SUBROUTINE sub_save_2D_{1:s}_{0:s}_array_as_PBM\n"
        ).format(
            typ,
            knd,
            "{0:s}(kind = {1:s}), DIMENSION(:, :), INTENT(in)".format(
                typ.upper(),
                knd
            ),
        )

        # Save source ...
        open("sub_save_array_as_PBM/sub_save_2D_{1:s}_{0:s}_array_as_PBM.f90".format(typ, knd), "wt").write(src)

# Open output file ...
with open("sub_save_array_as_PBM.tmp", "wt") as fobj:
    # Write out interfaces and includes ...
    fobj.write("INTERFACE sub_save_array_as_PBM\n")
    for typ in sorted(data.keys()):
        for knd in data[typ]:
            fobj.write("    MODULE PROCEDURE sub_save_2D_{1:s}_{0:s}_array_as_PBM\n".format(typ, knd))
    fobj.write("END INTERFACE sub_save_array_as_PBM\n")
    fobj.write("\n")
    for typ in sorted(data.keys()):
        for knd in data[typ]:
            fobj.write("INCLUDE \"mod_safe/sub_save_array_as_PBM/sub_save_2D_{1:s}_{0:s}_array_as_PBM.f90\"\n".format(typ, knd))
