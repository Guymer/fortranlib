SUBROUTINE sub_bcast_4D_REAL64_real_array(buff, root, comm)
    ! This subroutine broadcasts a 4D REAL64 real array.

    ! Import standard modules ...
    USE ISO_C_BINDING
    USE ISO_FORTRAN_ENV

    ! Import special modules ...
    USE MPI

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    REAL(kind = REAL64), CONTIGUOUS, DIMENSION(:, :, :, :), INTENT(inout), TARGET:: buff ! The 4D REAL64 real array to be broadcast.
    INTEGER, INTENT(in)                                                         :: root ! The root task.
    INTEGER, INTENT(in)                                                         :: comm ! The communicator.

    ! Declare parameters ...
    ! NOTE: "chunk" is the number of elements of "buff" that are needed to
    !       occupy exactly 1 GiB of RAM (which is 8 Gib of RAM).
    INTEGER(kind = INT64), PARAMETER                                            :: chunk = 8589934592_INT64 /  64_INT64

    ! Declare variables ...
    ! NOTE: "parcel" is the number of elements of "buff" that will be transfered
    !       in the current "MPI_BCAST" call.
    REAL(kind = REAL64), CONTIGUOUS, DIMENSION(:), POINTER                      :: buff_flat
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

        ! Broadcast the parcel ...
        CALL MPI_BCAST(buff_flat(i), parcel, MPI_REAL8, root, comm, errnum)
        IF(errnum /= MPI_SUCCESS)THEN
            WRITE(fmt = '("ERROR: ", a, ". errnum = ", i3, ".")', unit = ERROR_UNIT) "CALL MPI_BCAST() failed", errnum
            FLUSH(unit = ERROR_UNIT)
            CALL MPI_ABORT(comm, 111, errnum)
            STOP
        END IF
    END DO

    ! Destroy pointer ...
    NULLIFY(buff_flat)
END SUBROUTINE sub_bcast_4D_REAL64_real_array
