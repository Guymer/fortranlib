#!/usr/bin/env python3

# Use the proper idiom in the main module ...
# NOTE: See https://docs.python.org/3.8/library/multiprocessing.html#multiprocessing-programming
if __name__ == "__main__":
    # Import standard modules ...
    import os

    # Make target folder ...
    if not os.path.exists("sub_load_array_from_BIN"):
        os.makedirs("sub_load_array_from_BIN")

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
                    "!> @brief This subroutine loads a {2:d}D {1:s} {0:s} array from a BIN file.\n"
                    "!>\n"
                    "!> @param[out] arr The {2:d}D {1:s} {0:s} array to be loaded from a BIN file\n"
                    "!>\n"
                    "!> @param[in] fname The name of the BIN file\n"
                    "!>\n"
                    "\n"
                    "SUBROUTINE sub_load_{2:d}D_{1:s}_{0:s}_array_from_BIN(arr, fname)\n"
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
                    "    OPEN(access = \"stream\", action = \"read\", file = TRIM(fname), form = \"unformatted\", iomsg = errmsg, iostat = errnum, newunit = funit, status = \"old\")\n"
                    "    IF(errnum /= 0_INT32)THEN\n"
                    "        WRITE(fmt = '(\"ERROR: \", a, \". ERRMSG = \", a, \". ERRNUM = \", i3, \".\")', unit = ERROR_UNIT) \"Failed to open BIN\", TRIM(errmsg), errnum\n"
                    "        FLUSH(unit = ERROR_UNIT)\n"
                    "        STOP\n"
                    "    END IF\n"
                    "\n"
                    "    ! Read in array ...\n"
                    "    READ(unit = funit) arr\n"
                    "\n"
                    "    ! Close BIN ...\n"
                    "    CLOSE(unit = funit)\n"
                    "END SUBROUTINE sub_load_{2:d}D_{1:s}_{0:s}_array_from_BIN\n"
                ).format(
                    typ,
                    knd,
                    dim + 1,
                    "{0:s}(kind = {1:s}), DIMENSION({2:s}), INTENT(out)".format(
                        typ.upper(),
                        knd,
                        ", ".join((dim + 1) * [":"])
                    )
                )

                # Save source ...
                open("sub_load_array_from_BIN/sub_load_{2:d}D_{1:s}_{0:s}_array_from_BIN.f90".format(typ, knd, dim + 1), "wt").write(src)

    # Open output file ...
    with open("sub_load_array_from_BIN.tmp", "wt") as fobj:
        # Write out interfaces and includes ...
        fobj.write("INTERFACE sub_load_array_from_BIN\n")
        for typ in sorted(data.keys()):
            for knd in data[typ]:
                for dim in range(7):
                    fobj.write("    MODULE PROCEDURE sub_load_{2:d}D_{1:s}_{0:s}_array_from_BIN\n".format(typ, knd, dim + 1))
        fobj.write("END INTERFACE sub_load_array_from_BIN\n")
        fobj.write("\n")
        for typ in sorted(data.keys()):
            for knd in data[typ]:
                for dim in range(7):
                    fobj.write("INCLUDE \"mod_safe/sub_load_array_from_BIN/sub_load_{2:d}D_{1:s}_{0:s}_array_from_BIN.f90\"\n".format(typ, knd, dim + 1))
