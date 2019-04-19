MODULE mod_test05
    ! Import modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare parameters ...
    INTEGER(kind = INT64), PARAMETER                                            :: nsamples = 1000_INT64

    CONTAINS

    ! Define functions ...
    FUNCTION calc_pi() RESULT(ans)
        ! Import modules ...
        USE ISO_FORTRAN_ENV

        IMPLICIT NONE

        ! Declare inputs/outputs ...
        REAL(kind = REAL64)                                                     :: ans

        ! Declare variables ...
        REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                          :: x
        REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                          :: y

        ! Allocate arrays ...
        ALLOCATE(x(nsamples))
        ALLOCATE(y(nsamples))

        ! Fill arrays with random numbers ...
        CALL RANDOM_NUMBER(x)
        CALL RANDOM_NUMBER(y)

        ! Calculate pi ...
        ans = 4.0e0_REAL64 * REAL(COUNT(HYPOT(x, y) <= 1.0e0_REAL64), kind = REAL64) / REAL(nsamples, kind = REAL64)

        ! Clean up ...
        DEALLOCATE(x)
        DEALLOCATE(y)
    END FUNCTION calc_pi
END MODULE mod_test05

PROGRAM main
    ! Import modules ...
    USE ISO_FORTRAN_ENV
    USE MPI
    USE mod_safe, ONLY: const_pi
    USE mod_safe_mpi, ONLY: sub_allreduce_array
    USE mod_test05

    IMPLICIT NONE

    ! Declare variables ...
    REAL(kind = REAL64)                                                         :: pi
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: tmp

    ! Declare MPI variables ...
    INTEGER                                                                     :: ierr
    INTEGER                                                                     :: i_tasks
    INTEGER                                                                     :: n_tasks

    ! Initizalize MPI ...
    CALL MPI_INIT(ierr)
    IF(ierr /= MPI_SUCCESS)THEN
        WRITE(fmt = '("ERROR: ", a, ". ierr = ", i3, ".")', unit = ERROR_UNIT) "CALL MPI_INIT() failed", ierr
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF

    ! Find out this MPI task's rank ...
    CALL MPI_COMM_RANK(MPI_COMM_WORLD, i_tasks, ierr)
    IF(ierr /= MPI_SUCCESS)THEN
        WRITE(fmt = '("ERROR: ", a, ". ierr = ", i3, ".")', unit = ERROR_UNIT) "CALL MPI_COMM_RANK() failed", ierr
        FLUSH(unit = ERROR_UNIT)
        CALL MPI_ABORT(MPI_COMM_WORLD, 111, ierr)
        STOP
    END IF

    ! Find out how many MPI tasks there are ...
    CALL MPI_COMM_SIZE(MPI_COMM_WORLD, n_tasks, ierr)
    IF(ierr /= MPI_SUCCESS)THEN
        WRITE(fmt = '("ERROR: ", a, ". ierr = ", i3, ".")', unit = ERROR_UNIT) "CALL MPI_COMM_SIZE() failed", ierr
        FLUSH(unit = ERROR_UNIT)
        CALL MPI_ABORT(MPI_COMM_WORLD, 111, ierr)
        STOP
    END IF

    ! Allocate array ...
    ALLOCATE(tmp(n_tasks))

    ! Initizalize array ...
    tmp = 0.0e0_REAL64

    ! Calculate individual pi ...
    tmp(i_tasks + 1) = calc_pi()

    ! Print summary ...
    WRITE(fmt = '("For MPI task ", i1, " of ", i1, ", how does real pi compare to calculated pi? real = ", f11.9, "; calc = ", f11.9)', unit = OUTPUT_UNIT) i_tasks, n_tasks, const_pi, tmp(i_tasks + 1)
    FLUSH(unit = OUTPUT_UNIT)

    ! Reduce array ...
    CALL sub_allreduce_array(tmp, MPI_SUM, MPI_COMM_WORLD)

    ! Calculate average pi ...
    pi = SUM(tmp) / REAL(n_tasks, kind = REAL64)

    ! Clean up ...
    DEALLOCATE(tmp)

    ! Print summary ...
    IF(i_tasks == 0)THEN
        WRITE(fmt = '("Overall, how does real pi compare to calculated pi? real = ", f11.9, "; calc = ", f11.9)', unit = OUTPUT_UNIT) const_pi, pi
        FLUSH(unit = OUTPUT_UNIT)
    END IF

    ! Finalize MPI ...
    CALL MPI_FINALIZE(ierr)
    IF(ierr /= MPI_SUCCESS)THEN
        WRITE(fmt = '("ERROR: ", a, ". ierr = ", i3, ".")', unit = ERROR_UNIT) "CALL MPI_FINALIZE() failed", ierr
        FLUSH(unit = ERROR_UNIT)
        CALL MPI_ABORT(MPI_COMM_WORLD, 111, ierr)
        STOP
    END IF
END PROGRAM main
