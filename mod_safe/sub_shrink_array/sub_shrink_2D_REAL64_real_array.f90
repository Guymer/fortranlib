SUBROUTINE sub_shrink_2D_REAL64_real_array(nx, ny, arr, shrinkScale, shrunkenArr)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: nx
    INTEGER(kind = INT64), INTENT(in)                                           :: ny
    REAL(kind = REAL64), DIMENSION(nx, ny), INTENT(in)                          :: arr
    INTEGER(kind = INT64), INTENT(in)                                           :: shrinkScale
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:, :), INTENT(out)              :: shrunkenArr

    ! Declare variables ...
    INTEGER(kind = INT64)                                                       :: ix
    INTEGER(kind = INT64)                                                       :: ixlo
    INTEGER(kind = INT64)                                                       :: ixhi
    INTEGER(kind = INT64)                                                       :: iy
    INTEGER(kind = INT64)                                                       :: iylo
    INTEGER(kind = INT64)                                                       :: iyhi
    REAL(kind = REAL64)                                                         :: fact

    ! Check shrinkScale ...
    IF(MOD(nx, shrinkScale) /= 0_INT64)THEN
        WRITE(fmt = '("ERROR: ", a, ".")', unit = ERROR_UNIT) '"nx" is not an integer multiple of "shrinkScale"'
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF
    IF(MOD(ny, shrinkScale) /= 0_INT64)THEN
        WRITE(fmt = '("ERROR: ", a, ".")', unit = ERROR_UNIT) '"ny" is not an integer multiple of "shrinkScale"'
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF

    ! Create short-hand ...
    fact = 1.0e0_REAL64 / REAL(shrinkScale ** 2, kind = REAL64)

    ! Allocate array ...
    CALL sub_allocate_array(                                                    &
          arr = shrunkenArr,                                                    &
         name = "shrunkenArr",                                                  &
           n1 = nx / shrinkScale,                                               &
           n2 = ny / shrinkScale,                                               &
        debug = .FALSE._INT8                                                    &
    )

    !$omp parallel                                                              &
    !$omp default(none)                                                         &
    !$omp private(ix)                                                           &
    !$omp private(ixlo)                                                         &
    !$omp private(ixhi)                                                         &
    !$omp private(iy)                                                           &
    !$omp private(iylo)                                                         &
    !$omp private(iyhi)                                                         &
    !$omp shared(arr)                                                           &
    !$omp shared(fact)                                                          &
    !$omp shared(nx)                                                            &
    !$omp shared(ny)                                                            &
    !$omp shared(shrinkScale)                                                   &
    !$omp shared(shrunkenArr)
        !$omp do                                                                &
        !$omp schedule(dynamic)
            ! Loop over shrunken x-axis ...
            DO ix = 1_INT64, nx / shrinkScale
                ! Find the extent of the shrunken element ...
                ixlo = (ix - 1_INT64) * shrinkScale + 1_INT64
                ixhi =  ix            * shrinkScale

                ! Loop over shrunken y-axis ...
                DO iy = 1_INT64, ny / shrinkScale
                    ! Find the extent of the shrunken element ...
                    iylo = (iy - 1_INT64) * shrinkScale + 1_INT64
                    iyhi =  iy            * shrinkScale

                    ! Find the average value ...
                    shrunkenArr(ix, iy) = fact * SUM(arr(ixlo:ixhi, iylo:iyhi))
                END DO
            END DO
        !$omp end do
    !$omp end parallel
END SUBROUTINE sub_shrink_2D_REAL64_real_array
