#!/usr/bin/env python3

# Use the proper idiom in the main module ...
# NOTE: See https://docs.python.org/3.12/library/multiprocessing.html#the-spawn-and-forkserver-start-methods
if __name__ == "__main__":
    # Import standard modules ...
    import os

    # Make target folder ...
    if not os.path.exists("sub_allocate_array"):
        os.mkdir("sub_allocate_array")

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
                # Create list of variables ...
                ns = []
                for i in range(dim + 1):
                    ns.append(f"n{i + 1:d}")

                # Create source ...
                src = (
                    f"!> @brief This subroutine allocates a {dim + 1:d}D {knd} {typ} array.\n"
                    "!>\n"
                    f"!> @param[inout] arr The {dim + 1:d}D {knd} {typ} array to be allocated\n"
                    "!>\n"
                    "!> @param[in] name The name of the array\n"
                    "!>\n"
                )

                # Create source ...
                for i in range(dim + 1):
                    src += (
                        f"!> @param[in] n{i + 1:d} The size of the {i + 1:d}-th dimension of the array\n"
                        "!>\n"
                    )

                # Create source ...
                src += (
                    "!> @param[in] debug Verbosity flag\n"
                    "!>\n"
                    "\n"
                    f'SUBROUTINE sub_allocate_{dim + 1:d}D_{knd}_{typ}_array(arr, name, {", ".join(ns)}, debug)\n'
                    "    ! Import standard modules ...\n"
                    "    USE ISO_FORTRAN_ENV\n"
                    "\n"
                    "    IMPLICIT NONE\n"
                    "\n"
                    "    ! Declare inputs/outputs ...\n"
                    "    CHARACTER(len = *), INTENT(in)                                              :: name\n"
                    "    LOGICAL(kind = INT8), INTENT(in)                                            :: debug\n"
                )

                # Create source ...
                for n in ns:
                    src += (
                        f"    INTEGER(kind = INT64), INTENT(in)                                           :: {n}\n"
                    )

                # Create source ...
                lhs = f'{typ.upper()}(kind = {knd}), ALLOCATABLE, DIMENSION({", ".join((dim + 1) * [":"])}), INTENT(inout)'
                src += (
                    f"    {lhs:76s}:: arr\n"
                    "\n"
                    "    ! Declare variables ...\n"
                    "    CHARACTER(len = 3)                                                          :: units\n"
                    "    REAL(kind = REAL64)                                                         :: tmp\n"
                    "\n"
                    "    ! Declare FORTRAN variables ...\n"
                    "    CHARACTER(len = 256)                                                        :: errmsg\n"
                    "    INTEGER(kind = INT32)                                                       :: errnum\n"
                    "\n"
                    "    ! Check inputs ...\n"
                )

                # Create source ...
                for i in range(dim + 1):
                    src += (
                        f"    IF(n{i + 1:d} <= 0_INT64)THEN\n"
                        f"        WRITE(fmt = '(\"ERROR: The size of the {i + 1:d}-th dimension of \"\"\", a, \"\"\" is not positive.\")', unit = ERROR_UNIT) name\n"
                        "        FLUSH(unit = ERROR_UNIT)\n"
                        "        STOP\n"
                        "    END IF\n"
                    )

                # Create source ...
                src += (
                    "\n"
                    "    ! Check that a message needs printing ...\n"
                    "    IF(debug)THEN\n"
                    "        ! Calculate size ...\n"
                    f'        tmp = REAL({" * ".join(ns)} * STORAGE_SIZE(arr, kind = INT64) / 8_INT64, kind = REAL64) / 1024.0e0_REAL64\n'
                    "        units = \"KiB\"\n"
                    "        IF(tmp >= 1024.0e0_REAL64)THEN\n"
                    "            tmp = tmp / 1024.0e0_REAL64\n"
                    "            units = \"MiB\"\n"
                    "        END IF\n"
                    "        IF(tmp >= 1024.0e0_REAL64)THEN\n"
                    "            tmp = tmp / 1024.0e0_REAL64\n"
                    "            units = \"GiB\"\n"
                    "        END IF\n"
                    "        IF(tmp >= 1024.0e0_REAL64)THEN\n"
                    "            tmp = tmp / 1024.0e0_REAL64\n"
                    "            units = \"TiB\"\n"
                    "        END IF\n"
                    "\n"
                    "        ! Print summary ...\n"
                    "        WRITE(fmt = '(\"INFO: Attempting to ALLOCATE() \", f7.2, \" \", a, \" for \"\"\", a, \"\"\".\")', unit = OUTPUT_UNIT) tmp, units, name\n"
                    "        FLUSH(unit = OUTPUT_UNIT)\n"
                    "    END IF\n"
                    "\n"
                    "    ! Allocate array ...\n"
                    f'    ALLOCATE(arr({", ".join(ns)}), stat = errnum, errmsg = errmsg)\n'
                    "    IF(errnum /= 0_INT32)THEN\n"
                    "        WRITE(fmt = '(\"ERROR: Failed to ALLOCATE() \"\"\", a, \"\"\". ERRMSG = \", a, \". ERRNUM = \", i3, \".\")', unit = ERROR_UNIT) name, TRIM(errmsg), errnum\n"
                    "        FLUSH(unit = ERROR_UNIT)\n"
                    "        STOP\n"
                    "    END IF\n"
                )

                # Create source ...
                src += (
                    f"END SUBROUTINE sub_allocate_{dim + 1:d}D_{knd}_{typ}_array\n"
                )

                # Save source ...
                with open(f"sub_allocate_array/sub_allocate_{dim + 1:d}D_{knd}_{typ}_array.f90", "wt", encoding = "utf-8") as fObj:
                    fObj.write(src)

    # Open output file ...
    with open("sub_allocate_array.tmp", "wt", encoding = "utf-8") as fObj:
        # Write out interfaces and includes ...
        fObj.write("INTERFACE sub_allocate_array\n")
        for typ in sorted(data.keys()):
            for knd in data[typ]:
                for dim in range(7):
                    fObj.write(f"    MODULE PROCEDURE sub_allocate_{dim + 1:d}D_{knd}_{typ}_array\n")
        fObj.write("END INTERFACE sub_allocate_array\n")
        fObj.write("\n")
        for typ in sorted(data.keys()):
            for knd in data[typ]:
                for dim in range(7):
                    fObj.write(f"INCLUDE \"mod_safe/sub_allocate_array/sub_allocate_{dim + 1:d}D_{knd}_{typ}_array.f90\"\n")
