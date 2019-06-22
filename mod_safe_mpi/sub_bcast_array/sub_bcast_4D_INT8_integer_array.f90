!> @brief This subroutine broadcasts a 4D INT8 integer array.
!>
!> @param[in] buff The 4D INT8 integer array to be broadcast
!>
!> @param[in] root The root task
!>
!> @param[in] comm The communicator
!>

SUBROUTINE sub_bcast_4D_INT8_integer_array(buff, root, comm)
    USE ISO_C_BINDING
    USE ISO_FORTRAN_ENV
    USE MPI

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT8), DIMENSION(:, :, :, :), INTENT(inout), TARGET          :: buff
    INTEGER, INTENT(in)                                                         :: root
    INTEGER, INTENT(in)                                                         :: comm

    ! Declare parameters ...
    ! NOTE: "chunk" is the number of elements of "buff" that are needed to occupy exactly 1 GiB of RAM (which is 8 Gib of RAM).
    INTEGER(kind = INT64), PARAMETER                                            :: chunk = 8589934592_INT64 / STORAGE_SIZE(buff, kind = INT64)

    ! Declare variables ...
    ! NOTE: "tmp2" is the number of elements of "buff" that will be transfered in the current "MPI_BCAST" call.
    INTEGER(kind = INT8), DIMENSION(:), POINTER                                 :: buff_flat
    INTEGER(kind = INT64)                                                       :: i
    INTEGER(kind = INT64)                                                       :: n
    INTEGER                                                                     :: tmp2

    ! Declare MPI variables ...
    INTEGER                                                                     :: ierr

    ! Create flat array of pointers ...
    n = SIZE(buff, kind = INT64)
    CALL C_F_POINTER(C_LOC(buff(1_INT64, 1_INT64, 1_INT64, 1_INT64)), buff_flat, (/ n /))

    ! Loop over chunks ...
    DO i = 1_INT64, n, chunk
        ! Find the chunk size ...
        tmp2 = INT(MIN(n - i + 1_INT64, chunk))

        ! Broadcast the chunk ...
        CALL MPI_BCAST(buff_flat(i), tmp2, MPI_INTEGER1, root, comm, ierr)
        IF(ierr /= MPI_SUCCESS)THEN
            WRITE(fmt = '("ERROR: ", a, ". ierr = ", i3, ".")', unit = ERROR_UNIT) "CALL MPI_BCAST() failed", ierr
            FLUSH(unit = ERROR_UNIT)
            CALL MPI_ABORT(comm, 111, ierr)
            STOP
        END IF
    END DO

    ! Destroy pointer ...
    NULLIFY(buff_flat)
END SUBROUTINE sub_bcast_4D_INT8_integer_array
