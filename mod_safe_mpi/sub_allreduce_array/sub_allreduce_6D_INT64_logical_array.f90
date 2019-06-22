!> @brief This subroutine reduces a 6D INT64 logical array.
!>
!> @param[in] buff The 6D INT64 logical array to be reduced
!>
!> @param[in] op The operation to perform
!>
!> @param[in] comm The communicator
!>

SUBROUTINE sub_allreduce_6D_INT64_logical_array(buff, op, comm)
    USE ISO_C_BINDING
    USE ISO_FORTRAN_ENV
    USE MPI

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    LOGICAL(kind = INT64), DIMENSION(:, :, :, :, :, :), INTENT(inout), TARGET   :: buff
    INTEGER, INTENT(in)                                                         :: op
    INTEGER, INTENT(in)                                                         :: comm

    ! Declare parameters ...
    ! NOTE: "chunk" is the number of elements of "buff" that are needed to occupy exactly 1 GiB of RAM (which is 8 Gib of RAM).
    INTEGER(kind = INT64), PARAMETER                                            :: chunk = 8589934592_INT64 / STORAGE_SIZE(buff, kind = INT64)

    ! Declare variables ...
    ! NOTE: "parcel" is the number of elements of "buff" that will be transfered in the current "MPI_ALLREDUCE" call.
    LOGICAL(kind = INT64), DIMENSION(:), POINTER                                :: buff_flat
    INTEGER(kind = INT64)                                                       :: i
    INTEGER(kind = INT64)                                                       :: n
    INTEGER                                                                     :: parcel

    ! Declare MPI variables ...
    INTEGER                                                                     :: ierr

    ! Create flat array of pointers ...
    n = SIZE(buff, kind = INT64)
    CALL C_F_POINTER(C_LOC(buff(1_INT64, 1_INT64, 1_INT64, 1_INT64, 1_INT64, 1_INT64)), buff_flat, (/ n /))

    ! Loop over parcels ...
    DO i = 1_INT64, n, chunk
        ! Find the parcel size ...
        parcel = INT(MIN(n - i + 1_INT64, chunk))

        ! Reduce the parcel ...
        CALL MPI_ALLREDUCE(MPI_IN_PLACE, buff_flat(i), parcel, MPI_INTEGER8, op, comm, ierr)
        IF(ierr /= MPI_SUCCESS)THEN
            WRITE(fmt = '("ERROR: ", a, ". ierr = ", i3, ".")', unit = ERROR_UNIT) "CALL MPI_ALLREDUCE() failed", ierr
            FLUSH(unit = ERROR_UNIT)
            CALL MPI_ABORT(comm, 111, ierr)
            STOP
        END IF
    END DO

    ! Destroy pointer ...
    NULLIFY(buff_flat)
END SUBROUTINE sub_allreduce_6D_INT64_logical_array
