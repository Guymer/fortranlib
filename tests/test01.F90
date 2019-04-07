PROGRAM main
    ! NOTE: 22^7 = 2,494,357,888
    ! NOTE: 2^31 - 1 = 2,147,483,647
    ! NOTE: 2,494,357,888 > 2,147,483,647

    ! Import modules ...
    USE ISO_FORTRAN_ENV
    USE MPI
    USE mod_safe, ONLY: func_overall_index
    USE mod_safe_mpi, ONLY: sub_allreduce_array

    IMPLICIT NONE

    ! Declare parameters ...
    INTEGER(kind = INT64), PARAMETER                                            :: n = 22_INT64

    ! Declare variables ...
    INTEGER(kind = INT8), ALLOCATABLE, DIMENSION(:, :, :, :, :, :, :)           :: arr
    INTEGER(kind = INT64)                                                       :: i1
    INTEGER(kind = INT64)                                                       :: i2
    INTEGER(kind = INT64)                                                       :: i3
    INTEGER(kind = INT64)                                                       :: i4
    INTEGER(kind = INT64)                                                       :: i5
    INTEGER(kind = INT64)                                                       :: i6
    INTEGER(kind = INT64)                                                       :: i7

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

    ! Allocate array and initizalize it ...
    ALLOCATE(arr(n, n, n, n, n, n, n))
    arr = 0_INT8

    ! Loop over dimensions ...
    DO i1 = 1_INT64, n
        DO i2 = 1_INT64, n
            DO i3 = 1_INT64, n
                DO i4 = 1_INT64, n
                    DO i5 = 1_INT64, n
                        DO i6 = 1_INT64, n
                            DO i7 = 1_INT64, n
                                ! Skip this iteration if it is not for this MPI task ...
                                IF(INT(MOD(func_overall_index(i1, i2, i3, i4, i5, i6, i7, n, n, n, n, n, n, n), INT(n_tasks, kind = INT64))) /= i_tasks)THEN
                                    CYCLE
                                END IF

                                ! Populate array ...
                                arr(i1, i2, i3, i4, i5, i6, i7) = 1_INT8
                            END DO
                        END DO
                    END DO
                END DO
            END DO
        END DO
    END DO

    ! Reduce array ...
    CALL sub_allreduce_array(arr, MPI_SUM, MPI_COMM_WORLD)

    ! Print summary ...
    WRITE(fmt = '("Does MPI task ", i1, " of ", i1, " think that everything worked? ", l1)', unit = OUTPUT_UNIT) i_tasks, n_tasks, ALL(arr == 1_INT8)
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
END PROGRAM main
