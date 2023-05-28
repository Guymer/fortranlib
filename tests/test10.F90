PROGRAM test10
    ! Import modules ...
    USE ISO_FORTRAN_ENV
    USE mod_safe, ONLY: sub_allocate_array, sub_save_array_as_PGM

    IMPLICIT NONE

    ! Declare parameters ...
    INTEGER(kind = INT64), PARAMETER                                            :: nx = 16_INT64
    INTEGER(kind = INT64), PARAMETER                                            :: ny = 32_INT64

    ! Declare variables ...
    INTEGER(kind = INT16), ALLOCATABLE, DIMENSION(:, :)                         :: arr
    INTEGER(kind = INT64)                                                       :: ix
    INTEGER(kind = INT64)                                                       :: iy

    ! Allocate array ...
    CALL sub_allocate_array(arr, "arr", nx, ny, .FALSE._INT8)

    ! Populate array ...
    DO ix = 1_INT64, nx
        DO iy = 1_INT64, ny
            arr(ix, iy) = INT((ix - 1_INT64) * (iy - 1_INT64), kind = INT16)
        END DO
    END DO

    ! Save array as PGM ...
    CALL sub_save_array_as_PGM(arr, "test10.pgm")

    ! Clean up ...
    DEALLOCATE(arr)
END PROGRAM test10
