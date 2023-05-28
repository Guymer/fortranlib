PROGRAM test01
    ! NOTE: 22^7 = 2,494,357,888
    ! NOTE: 2^31 - 1 = 2,147,483,647
    ! NOTE: 2,494,357,888 > 2,147,483,647

    ! Import modules ...
    USE ISO_FORTRAN_ENV
    USE MPI
    USE mod_safe, ONLY: sub_allocate_array
    USE mod_safe_mpi, ONLY: sub_bcast_array

    IMPLICIT NONE

    ! Declare parameters ...
    INTEGER(kind = INT64), PARAMETER                                            :: n = 22_INT64

    ! Declare variables ...
    INTEGER(kind = INT8), ALLOCATABLE, DIMENSION(:, :, :, :, :, :, :)           :: arr

    ! Declare MPI variables ...
    INTEGER                                                                     :: ierr
    INTEGER                                                                     :: itasks
    INTEGER                                                                     :: ntasks

    ! Initizalize MPI ...
    CALL MPI_INIT(ierr)
    IF(ierr /= MPI_SUCCESS)THEN
        WRITE(fmt = '("ERROR: ", a, ". ierr = ", i3, ".")', unit = ERROR_UNIT) "CALL MPI_INIT() failed", ierr
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF

    ! Find out this MPI task's rank ...
    CALL MPI_COMM_RANK(MPI_COMM_WORLD, itasks, ierr)
    IF(ierr /= MPI_SUCCESS)THEN
        WRITE(fmt = '("ERROR: ", a, ". ierr = ", i3, ".")', unit = ERROR_UNIT) "CALL MPI_COMM_RANK() failed", ierr
        FLUSH(unit = ERROR_UNIT)
        CALL MPI_ABORT(MPI_COMM_WORLD, 111, ierr)
        STOP
    END IF

    ! Find out how many MPI tasks there are ...
    CALL MPI_COMM_SIZE(MPI_COMM_WORLD, ntasks, ierr)
    IF(ierr /= MPI_SUCCESS)THEN
        WRITE(fmt = '("ERROR: ", a, ". ierr = ", i3, ".")', unit = ERROR_UNIT) "CALL MPI_COMM_SIZE() failed", ierr
        FLUSH(unit = ERROR_UNIT)
        CALL MPI_ABORT(MPI_COMM_WORLD, 111, ierr)
        STOP
    END IF

    ! Allocate array and initialize it ...
    CALL sub_allocate_array(arr, "arr", n, n, n, n, n, n, n, .FALSE._INT8)
    arr = 0_INT8

    ! Populate array ...
    IF(itasks == 0)THEN
        arr = 1_INT8
    END IF

    ! Broadcast array ...
    CALL sub_bcast_array(arr, 0, MPI_COMM_WORLD)

    ! Print summary ...
    WRITE(fmt = '("Does MPI task ", i1, " of ", i1, " think that everything worked? ", l1)', unit = OUTPUT_UNIT) itasks, ntasks, ALL(arr == 1_INT8)
    FLUSH(unit = OUTPUT_UNIT)

    ! Clean up ...
    DEALLOCATE(arr)

    ! Finalize MPI ...
    CALL MPI_FINALIZE(ierr)
    IF(ierr /= MPI_SUCCESS)THEN
        WRITE(fmt = '("ERROR: ", a, ". ierr = ", i3, ".")', unit = ERROR_UNIT) "CALL MPI_FINALIZE() failed", ierr
        FLUSH(unit = ERROR_UNIT)
        CALL MPI_ABORT(MPI_COMM_WORLD, 111, ierr)
        STOP
    END IF
END PROGRAM test01
