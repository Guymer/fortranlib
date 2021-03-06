#!/usr/bin/env python3

# Use the proper idiom in the main module ...
# NOTE: See https://docs.python.org/3.8/library/multiprocessing.html#multiprocessing-programming
if __name__ == "__main__":
    # Import standard modules ...
    import os
    import string

    # Make target folder ...
    if not os.path.exists("sub_bcast_array"):
        os.makedirs("sub_bcast_array")

    # Define types and kinds ...
    data = {
        "logical" : ([  "INT8",  "INT16",   "INT32", "INT64"], ["MPI_INTEGER1", "MPI_INTEGER2", "MPI_INTEGER4", "MPI_INTEGER8"]),
        "integer" : ([  "INT8",  "INT16",   "INT32", "INT64"], ["MPI_INTEGER1", "MPI_INTEGER2", "MPI_INTEGER4", "MPI_INTEGER8"]),
           "real" : (["REAL32", "REAL64", "REAL128"         ], [   "MPI_REAL4",    "MPI_REAL8",   "MPI_REAL16"                ]),
    }

    # Loop over types ...
    for typ in sorted(data.keys()):
        # Loop over kinds ...
        for knd1, knd2 in zip(data[typ][0], data[typ][1]):
            # Loop over dimensions ...
            for dim in range(7):
                # Create source ...
                src = (
                    "!> @brief This subroutine broadcasts a {2:d}D {1:s} {0:s} array.\n"
                    "!>\n"
                    "!> @param[in] buff The {2:d}D {1:s} {0:s} array to be broadcast\n"
                    "!>\n"
                    "!> @param[in] root The root task\n"
                    "!>\n"
                    "!> @param[in] comm The communicator\n"
                    "!>\n"
                    "\n"
                    "SUBROUTINE sub_bcast_{2:d}D_{1:s}_{0:s}_array(buff, root, comm)\n"
                    "    USE ISO_C_BINDING\n"
                    "    USE ISO_FORTRAN_ENV\n"
                    "    USE MPI\n"
                    "\n"
                    "    IMPLICIT NONE\n"
                    "\n"
                    "    ! Declare inputs/outputs ...\n"
                    "    {3:76s}:: buff\n"
                    "    INTEGER, INTENT(in)                                                         :: root\n"
                    "    INTEGER, INTENT(in)                                                         :: comm\n"
                    "\n"
                    "    ! Declare parameters ...\n"
                    "    ! NOTE: \"chunk\" is the number of elements of \"buff\" that are needed to\n"
                    "    !       occupy exactly 1 GiB of RAM (which is 8 Gib of RAM).\n"
                    "    INTEGER(kind = INT64), PARAMETER                                            :: chunk = 8589934592_INT64 / {4:3d}_INT64\n"
                    "\n"
                    "    ! Declare variables ...\n"
                    "    ! NOTE: \"parcel\" is the number of elements of \"buff\" that will be transfered\n"
                    "    !       in the current \"MPI_BCAST\" call.\n"
                    "    {5:76s}:: buff_flat\n"
                    "    INTEGER(kind = INT64)                                                       :: i\n"
                    "    INTEGER(kind = INT64)                                                       :: n\n"
                    "    INTEGER                                                                     :: parcel\n"
                    "\n"
                    "    ! Declare MPI variables ...\n"
                    "    INTEGER                                                                     :: errnum\n"
                    "\n"
                    "    ! Create flat array of pointers ...\n"
                    "    n = SIZE(buff, kind = INT64)\n"
                    "    CALL C_F_POINTER(C_LOC(buff({6:s})), buff_flat, (/ n /))\n"
                    "\n"
                    "    ! Loop over parcels ...\n"
                    "    DO i = 1_INT64, n, chunk\n"
                    "        ! Find the parcel size ...\n"
                    "        parcel = INT(MIN(n - i + 1_INT64, chunk))\n"
                    "\n"
                    "        ! Broadcast the parcel ...\n"
                    "        CALL MPI_BCAST(buff_flat(i), parcel, {7:s}, root, comm, errnum)\n"
                    "        IF(errnum /= MPI_SUCCESS)THEN\n"
                    "            WRITE(fmt = '(\"ERROR: \", a, \". errnum = \", i3, \".\")', unit = ERROR_UNIT) \"CALL MPI_BCAST() failed\", errnum\n"
                    "            FLUSH(unit = ERROR_UNIT)\n"
                    "            CALL MPI_ABORT(comm, 111, errnum)\n"
                    "            STOP\n"
                    "        END IF\n"
                    "    END DO\n"
                    "\n"
                    "    ! Destroy pointer ...\n"
                    "    NULLIFY(buff_flat)\n"
                    "END SUBROUTINE sub_bcast_{2:d}D_{1:s}_{0:s}_array\n"
                ).format(
                    typ,
                    knd1,
                    dim + 1,
                    "{0:s}(kind = {1:s}), CONTIGUOUS, DIMENSION({2:s}), INTENT(inout), TARGET".format(
                        typ.upper(),
                        knd1,
                        ", ".join((dim + 1) * [":"])
                    ),
                    int(knd1.strip(string.ascii_letters)),
                    "{0:s}(kind = {1:s}), CONTIGUOUS, DIMENSION(:), POINTER".format(
                        typ.upper(),
                        knd1
                    ),
                    ", ".join((dim + 1) * ["1_INT64"]),
                    knd2
                )

                # Save source ...
                open("sub_bcast_array/sub_bcast_{2:d}D_{1:s}_{0:s}_array.f90".format(typ, knd1, dim + 1), "wt").write(src)

    # Open output file ...
    with open("sub_bcast_array.tmp", "wt") as fobj:
        # Write out interfaces and includes ...
        fobj.write("INTERFACE sub_bcast_array\n")
        for typ in sorted(data.keys()):
            for knd1, knd2 in zip(data[typ][0], data[typ][1]):
                for dim in range(7):
                    fobj.write("    MODULE PROCEDURE sub_bcast_{2:d}D_{1:s}_{0:s}_array\n".format(typ, knd1, dim + 1))
        fobj.write("END INTERFACE sub_bcast_array\n")
        fobj.write("\n")
        for typ in sorted(data.keys()):
            for knd1, knd2 in zip(data[typ][0], data[typ][1]):
                for dim in range(7):
                    fobj.write("INCLUDE \"mod_safe_mpi/sub_bcast_array/sub_bcast_{2:d}D_{1:s}_{0:s}_array.f90\"\n".format(typ, knd1, dim + 1))
