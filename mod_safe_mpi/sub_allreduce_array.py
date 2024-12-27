#!/usr/bin/env python3

# Use the proper idiom in the main module ...
# NOTE: See https://docs.python.org/3.12/library/multiprocessing.html#the-spawn-and-forkserver-start-methods
if __name__ == "__main__":
    # Import standard modules ...
    import os
    import string

    # Make target folder ...
    if not os.path.exists("sub_allreduce_array"):
        os.mkdir("sub_allreduce_array")

    # Define types and kinds ...
    data = {
        "logical" : ([  "INT8",  "INT16",   "INT32", "INT64"], ["MPI_INTEGER1", "MPI_INTEGER2", "MPI_INTEGER4", "MPI_INTEGER8"]),
        "integer" : ([  "INT8",  "INT16",   "INT32", "INT64"], ["MPI_INTEGER1", "MPI_INTEGER2", "MPI_INTEGER4", "MPI_INTEGER8"]),
           "real" : (["REAL32", "REAL64", "REAL128"         ], [   "MPI_REAL4",    "MPI_REAL8",   "MPI_REAL16"                ]),
    }

    # Loop over types ...
    for typ in sorted(data.keys()):
        # Loop over kinds ...
        for knd1, knd2 in zip(data[typ][0], data[typ][1], strict = True):
            # Loop over dimensions ...
            for dim in range(7):
                # Create source ...
                lhs1 = f'{typ.upper()}(kind = {knd1}), CONTIGUOUS, DIMENSION({", ".join((dim + 1) * [":"])}), INTENT(inout), TARGET'
                lhs2 = f"{typ.upper()}(kind = {knd1}), CONTIGUOUS, DIMENSION(:), POINTER"
                src = (
                    f"SUBROUTINE sub_allreduce_{dim + 1:d}D_{knd1}_{typ}_array(buff, op, comm)\n"
                    f"    ! This subroutine reduces a {dim + 1:d}D {knd1} {typ} array.\n"
                    "\n"
                    "    ! Import standard modules ...\n"
                    "    USE ISO_C_BINDING\n"
                    "    USE ISO_FORTRAN_ENV\n"
                    "\n"
                    "    ! Import special modules ...\n"
                    "    USE MPI\n"
                    "\n"
                    "    IMPLICIT NONE\n"
                    "\n"
                    "    ! Declare inputs/outputs ...\n"
                    f"    {lhs1:76s}:: buff ! The {dim + 1:d}D {knd1} {typ} array to be reduced.\n"
                    "    INTEGER, INTENT(in)                                                         :: op ! The operation to perform.\n"
                    "    INTEGER, INTENT(in)                                                         :: comm ! The communicator.\n"
                    "\n"
                    "    ! Declare parameters ...\n"
                    "    ! NOTE: \"chunk\" is the number of elements of \"buff\" that are needed to\n"
                    "    !       occupy exactly 1 GiB of RAM (which is 8 Gib of RAM).\n"
                    f"    INTEGER(kind = INT64), PARAMETER                                            :: chunk = 8589934592_INT64 / {int(knd1.strip(string.ascii_letters)):3d}_INT64\n"
                    "\n"
                    "    ! Declare variables ...\n"
                    "    ! NOTE: \"parcel\" is the number of elements of \"buff\" that will be transfered\n"
                    "    !       in the current \"MPI_ALLREDUCE\" call.\n"
                    f"    {lhs2:76s}:: buff_flat\n"
                    "    INTEGER(kind = INT64)                                                       :: i\n"
                    "    INTEGER(kind = INT64)                                                       :: n\n"
                    "    INTEGER                                                                     :: parcel\n"
                    "\n"
                    "    ! Declare MPI variables ...\n"
                    "    INTEGER                                                                     :: errnum\n"
                    "\n"
                    "    ! Create flat array of pointers ...\n"
                    "    n = SIZE(buff, kind = INT64)\n"
                    f'    CALL C_F_POINTER(C_LOC(buff({", ".join((dim + 1) * ["1_INT64"])})), buff_flat, (/ n /))\n'
                    "\n"
                    "    ! Loop over parcels ...\n"
                    "    DO i = 1_INT64, n, chunk\n"
                    "        ! Find the parcel size ...\n"
                    "        parcel = INT(MIN(n - i + 1_INT64, chunk))\n"
                    "\n"
                    "        ! Reduce the parcel ...\n"
                    f"        CALL MPI_ALLREDUCE(MPI_IN_PLACE, buff_flat(i), parcel, {knd2}, op, comm, errnum)\n"
                    "        IF(errnum /= MPI_SUCCESS)THEN\n"
                    "            WRITE(fmt = '(\"ERROR: \", a, \". errnum = \", i3, \".\")', unit = ERROR_UNIT) \"CALL MPI_ALLREDUCE() failed\", errnum\n"
                    "            FLUSH(unit = ERROR_UNIT)\n"
                    "            CALL MPI_ABORT(comm, 111, errnum)\n"
                    "            STOP\n"
                    "        END IF\n"
                    "    END DO\n"
                    "\n"
                    "    ! Destroy pointer ...\n"
                    "    NULLIFY(buff_flat)\n"
                    f"END SUBROUTINE sub_allreduce_{dim + 1:d}D_{knd1}_{typ}_array\n"
                )

                # Save source ...
                with open(f"sub_allreduce_array/sub_allreduce_{dim + 1:d}D_{knd1}_{typ}_array.f90", "wt", encoding = "utf-8") as fObj:
                    fObj.write(src)

    # Open output file ...
    with open("sub_allreduce_array.tmp", "wt", encoding = "utf-8") as fObj:
        # Write out interfaces and includes ...
        fObj.write("INTERFACE sub_allreduce_array\n")
        for typ in sorted(data.keys()):
            for knd1, knd2 in zip(data[typ][0], data[typ][1], strict = True):
                for dim in range(7):
                    fObj.write(f"    MODULE PROCEDURE sub_allreduce_{dim + 1:d}D_{knd1}_{typ}_array\n")
        fObj.write("END INTERFACE sub_allreduce_array\n")
        fObj.write("\n")
        for typ in sorted(data.keys()):
            for knd1, knd2 in zip(data[typ][0], data[typ][1], strict = True):
                for dim in range(7):
                    fObj.write(f"INCLUDE \"mod_safe_mpi/sub_allreduce_array/sub_allreduce_{dim + 1:d}D_{knd1}_{typ}_array.f90\"\n")
