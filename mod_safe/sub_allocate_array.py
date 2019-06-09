#!/usr/bin/env python2
# -*- coding: utf-8 -*-

# Import modules ...
import os

# Make target folder ...
if not os.path.exists("sub_allocate_array"):
    os.makedirs("sub_allocate_array")

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
        for dim in xrange(7):
            # Create list of variables ...
            ns = []
            for i in xrange(dim + 1):
                ns.append("n{0:d}".format(i + 1))

            # Create source ...
            src = (
                "!> @brief This subroutine allocates a {2:d}D {1:s} {0:s} array.\n"
                "!>\n"
                "!> @param[inout] arr The {2:d}D {1:s} {0:s} array to be allocated\n"
                "!>\n"
                "!> @param[in] name The name of the array\n"
                "!>\n"
            ).format(
                typ,
                knd,
                dim + 1
            )

            # Create source ...
            for i in xrange(dim + 1):
                src += (
                    "!> @param[in] n{0:d} The size of the {0:d}-th dimension of the array\n"
                    "!>\n"
                ).format(i + 1)

            # Create source ...
            src += (
                "!> @param[in] debug Verbosity flag\n"
                "!>\n"
                "\n"
                "SUBROUTINE sub_allocate_{2:d}D_{1:s}_{0:s}_array(arr, name, {3:s}, debug)\n"
                "    USE ISO_FORTRAN_ENV\n"
                "\n"
                "    IMPLICIT NONE\n"
                "\n"
                "    ! Declare inputs/outputs ...\n"
                "    CHARACTER(len = *), INTENT(in)                                              :: name\n"
                "    LOGICAL(kind = INT8), INTENT(in)                                            :: debug\n"
            ).format(
                typ,
                knd,
                dim + 1,
                ", ".join(ns)
            )

            # Create source ...
            for n in ns:
                src += (
                    "    INTEGER(kind = INT64), INTENT(in)                                           :: {0:s}\n"
                ).format(n)

            # Create source ...
            src += (
                "    {0:76s}:: arr\n"
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
            ).format(
                "{0:s}(kind = {1:s}), ALLOCATABLE, DIMENSION({2:s}), INTENT(inout)".format(
                    typ.upper(),
                    knd,
                    ", ".join((dim + 1) * [":"])
                )
            )

            # Create source ...
            for i in xrange(dim + 1):
                src += (
                    "    IF(n{0:d} <= 0_INT64)THEN\n"
                    "        WRITE(fmt = '(\"ERROR: The size of the {0:d}-th dimension of \"\"\", a, \"\"\" is not positive.\")', unit = ERROR_UNIT) name\n"
                    "        FLUSH(unit = ERROR_UNIT)\n"
                    "        STOP\n"
                    "    END IF\n"
                ).format(i + 1)

            # Create source ...
            src += (
                "\n"
                "    ! Check that a message needs printing ...\n"
                "    IF(debug)THEN\n"
                "        ! Calculate size ...\n"
                "        tmp = REAL({0:s} * STORAGE_SIZE(arr, kind = INT64) / 8_INT64, kind = REAL64) / 1024.0e0_REAL64\n"
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
                "    ALLOCATE(arr({1:s}), stat = errnum, errmsg = errmsg)\n"
                "    IF(errnum /= 0_INT32)THEN\n"
                "        WRITE(fmt = '(\"ERROR: Failed to ALLOCATE() \"\"\", a, \"\"\". ERRMSG = \", a, \". ERRNUM = \", i3, \".\")', unit = ERROR_UNIT) name, TRIM(errmsg), errnum\n"
                "        FLUSH(unit = ERROR_UNIT)\n"
                "        STOP\n"
                "    END IF\n"
            ).format(
                " * ".join(ns),
                ", ".join(ns)
            )

            # Create source ...
            src += (
                "END SUBROUTINE sub_allocate_{2:d}D_{1:s}_{0:s}_array\n"
            ).format(
                typ,
                knd,
                dim + 1
            )

            # Save source ...
            open("sub_allocate_array/sub_allocate_{2:d}D_{1:s}_{0:s}_array.f90".format(typ, knd, dim + 1), "wt").write(src)

# Open output file ...
with open("sub_allocate_array.tmp", "wt") as fobj:
    # Write out interfaces and includes ...
    fobj.write("INTERFACE sub_allocate_array\n")
    for typ in sorted(data.keys()):
        for knd in data[typ]:
            for dim in xrange(7):
                fobj.write("    MODULE PROCEDURE sub_allocate_{2:d}D_{1:s}_{0:s}_array\n".format(typ, knd, dim + 1))
    fobj.write("END INTERFACE sub_allocate_array\n")
    fobj.write("\n")
    for typ in sorted(data.keys()):
        for knd in data[typ]:
            for dim in xrange(7):
                fobj.write("INCLUDE \"mod_safe/sub_allocate_array/sub_allocate_{2:d}D_{1:s}_{0:s}_array.f90\"\n".format(typ, knd, dim + 1))
