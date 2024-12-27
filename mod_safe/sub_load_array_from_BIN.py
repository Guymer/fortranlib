#!/usr/bin/env python3

# Use the proper idiom in the main module ...
# NOTE: See https://docs.python.org/3.12/library/multiprocessing.html#the-spawn-and-forkserver-start-methods
if __name__ == "__main__":
    # Import standard modules ...
    import os

    # Make target folder ...
    if not os.path.exists("sub_load_array_from_BIN"):
        os.mkdir("sub_load_array_from_BIN")

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
                lhs = f'{typ.upper()}(kind = {knd}), DIMENSION({", ".join((dim + 1) * [":"])}), INTENT(out)'
                src = (
                    f"!> @brief This subroutine loads a {dim + 1:d}D {knd} {typ} array from a BIN file.\n"
                    "!>\n"
                    f"!> @param[out] arr The {dim + 1:d}D {knd} {typ} array to be loaded from a BIN file\n"
                    "!>\n"
                    "!> @param[in] fname The name of the BIN file\n"
                    "!>\n"
                    "\n"
                    f"SUBROUTINE sub_load_{dim + 1:d}D_{knd}_{typ}_array_from_BIN(arr, fname)\n"
                    "    ! Import standard modules ...\n"
                    "    USE ISO_FORTRAN_ENV\n"
                    "\n"
                    "    IMPLICIT NONE\n"
                    "\n"
                    "    ! Declare inputs/outputs ...\n"
                    "    CHARACTER(len = *), INTENT(in)                                              :: fname\n"
                    f"    {lhs:76s}:: arr\n"
                    "\n"
                    "    ! Declare FORTRAN variables ...\n"
                    "    CHARACTER(len = 256)                                                        :: errmsg\n"
                    "    INTEGER(kind = INT32)                                                       :: errnum\n"
                    "    INTEGER(kind = INT32)                                                       :: funit\n"
                    "\n"
                    "    ! Open BIN ...\n"
                    "    OPEN(                                                                       &\n"
                    "         access = \"stream\",                                                     &\n"
                    "         action = \"read\",                                                       &\n"
                    "           file = TRIM(fname),                                                  &\n"
                    "           form = \"unformatted\",                                                &\n"
                    "          iomsg = errmsg,                                                       &\n"
                    "         iostat = errnum,                                                       &\n"
                    "        newunit = funit,                                                        &\n"
                    "         status = \"old\"                                                         &\n"
                    "    )\n"
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
                    f"END SUBROUTINE sub_load_{dim + 1:d}D_{knd}_{typ}_array_from_BIN\n"
                )

                # Save source ...
                with open(f"sub_load_array_from_BIN/sub_load_{dim + 1:d}D_{knd}_{typ}_array_from_BIN.f90", "wt", encoding = "utf-8") as fObj:
                    fObj.write(src)

    # Open output file ...
    with open("sub_load_array_from_BIN.tmp", "wt", encoding = "utf-8") as fObj:
        # Write out interfaces and includes ...
        fObj.write("INTERFACE sub_load_array_from_BIN\n")
        for typ in sorted(data.keys()):
            for knd in data[typ]:
                for dim in range(7):
                    fObj.write(f"    MODULE PROCEDURE sub_load_{dim + 1:d}D_{knd}_{typ}_array_from_BIN\n")
        fObj.write("END INTERFACE sub_load_array_from_BIN\n")
        fObj.write("\n")
        for typ in sorted(data.keys()):
            for knd in data[typ]:
                for dim in range(7):
                    fObj.write(f"INCLUDE \"mod_safe/sub_load_array_from_BIN/sub_load_{dim + 1:d}D_{knd}_{typ}_array_from_BIN.f90\"\n")
