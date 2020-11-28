#!/usr/bin/env python3

# Import standard modules ...
import os

# Make target folder ...
if not os.path.exists("sub_save_array_as_BIN"):
    os.makedirs("sub_save_array_as_BIN")

# Define types and kinds ...
data = {
    "logical" : [  "INT8",  "INT16",   "INT32", "INT64"],
    "integer" : [  "INT8",  "INT16",   "INT32", "INT64"],
       "real" : ["REAL32", "REAL64", "REAL128"         ]
}

# Loop over types ...
for typ in sorted(data.keys()):
    # Loop over kinds ...
    for knd in data[typ]:
        # Loop over dimensions ...
        for dim in range(7):
            # Create source ...
            src = (
                "!> @brief This subroutine saves a {2:d}D {1:s} {0:s} array to a BIN file.\n"
                "!>\n"
                "!> @param[in] arr The {2:d}D {1:s} {0:s} array to be saved to a BIN file\n"
                "!>\n"
                "!> @param[in] fname The name of the BIN file\n"
                "!>\n"
                "\n"
                "SUBROUTINE sub_save_{2:d}D_{1:s}_{0:s}_array_as_BIN(arr, fname)\n"
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
                "    ! Open BIN ...\n"
                "    OPEN(access = \"stream\", action = \"write\", file = TRIM(fname), form = \"unformatted\", iomsg = errmsg, iostat = errnum, newunit = funit, status = \"replace\")\n"
                "    IF(errnum /= 0_INT32)THEN\n"
                "        WRITE(fmt = '(\"ERROR: \", a, \". ERRMSG = \", a, \". ERRNUM = \", i3, \".\")', unit = ERROR_UNIT) \"Failed to open BIN\", TRIM(errmsg), errnum\n"
                "        FLUSH(unit = ERROR_UNIT)\n"
                "        STOP\n"
                "    END IF\n"
                "\n"
                "    ! Write out array ...\n"
                "    WRITE(unit = funit) arr\n"
                "\n"
                "    ! Close BIN ...\n"
                "    CLOSE(unit = funit)\n"
                "END SUBROUTINE sub_save_{2:d}D_{1:s}_{0:s}_array_as_BIN\n"
            ).format(
                typ,
                knd,
                dim + 1,
                "{0:s}(kind = {1:s}), DIMENSION({2:s}), INTENT(in)".format(
                    typ.upper(),
                    knd,
                    ", ".join((dim + 1) * [":"])
                )
            )

            # Save source ...
            open("sub_save_array_as_BIN/sub_save_{2:d}D_{1:s}_{0:s}_array_as_BIN.f90".format(typ, knd, dim + 1), "wt").write(src)

# Open output file ...
with open("sub_save_array_as_BIN.tmp", "wt") as fobj:
    # Write out interfaces and includes ...
    fobj.write("INTERFACE sub_save_array_as_BIN\n")
    for typ in sorted(data.keys()):
        for knd in data[typ]:
            for dim in range(7):
                fobj.write("    MODULE PROCEDURE sub_save_{2:d}D_{1:s}_{0:s}_array_as_BIN\n".format(typ, knd, dim + 1))
    fobj.write("END INTERFACE sub_save_array_as_BIN\n")
    fobj.write("\n")
    for typ in sorted(data.keys()):
        for knd in data[typ]:
            for dim in range(7):
                fobj.write("INCLUDE \"mod_safe/sub_save_array_as_BIN/sub_save_{2:d}D_{1:s}_{0:s}_array_as_BIN.f90\"\n".format(typ, knd, dim + 1))