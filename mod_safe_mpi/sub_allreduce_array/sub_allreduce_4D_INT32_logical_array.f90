SUBROUTINE sub_allreduce_4D_INT32_logical_array(buff, op, comm)
    ! This subroutine reduces a 4D INT32 logical array.

    ! Import standard modules ...
    USE ISO_C_BINDING
    USE ISO_FORTRAN_ENV

    ! Import special modules ...
    USE MPI

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    LOGICAL(kind = INT32), CONTIGUOUS, DIMENSION(:, :, :, :), INTENT(inout), TARGET:: buff ! The 4D INT32 logical array to be reduced.
    INTEGER, INTENT(in)                                                         :: op ! The operation to perform.
    INTEGER, INTENT(in)                                                         :: comm ! The communicator.

    ! Declare parameters ...
    ! NOTE: "chunk" is the number of elements of "buff" that are needed to
    !       occupy exactly 1 GiB of RAM (which is 8 Gib of RAM).
    INTEGER(kind = INT64), PARAMETER                                            :: chunk = 8589934592_INT64 /  32_INT64

    ! Declare variables ...
    ! NOTE: "parcel" is the number of elements of "buff" that will be transfered
    !       in the current "MPI_ALLREDUCE" call.
    LOGICAL(kind = INT32), CONTIGUOUS, DIMENSION(:), POINTER                    :: buff_flat
    INTEGER(kind = INT64)                                                       :: i
    INTEGER(kind = INT64)                                                       :: n
    INTEGER                                                                     :: parcel

    ! Declare MPI variables ...
    INTEGER                                                                     :: errnum

    ! Create flat array of pointers ...
    n = SIZE(buff, kind = INT64)
    CALL C_F_POINTER(C_LOC(buff(1_INT64, 1_INT64, 1_INT64, 1_INT64)), buff_flat, (/ n /))

    ! Loop over parcels ...
    DO i = 1_INT64, n, chunk
        ! Find the parcel size ...
        parcel = INT(MIN(n - i + 1_INT64, chunk))

        ! Reduce the parcel ...
        CALL MPI_ALLREDUCE(MPI_IN_PLACE, buff_flat(i), parcel, MPI_INTEGER4, op, comm, errnum)
        IF(errnum /= MPI_SUCCESS)THEN
            WRITE(fmt = '("ERROR: ", a, ". errnum = ", i3, ".")', unit = ERROR_UNIT) "CALL MPI_ALLREDUCE() failed", errnum
            FLUSH(unit = ERROR_UNIT)
            CALL MPI_ABORT(comm, 111, errnum)
            STOP
        END IF
    END DO

    ! Destroy pointer ...
    NULLIFY(buff_flat)
END SUBROUTINE sub_allreduce_4D_INT32_logical_array
