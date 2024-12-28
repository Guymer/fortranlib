PROGRAM test09
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    ! Import my modules ...
    USE mod_safe, ONLY: sub_allocate_array, sub_save_array_as_PBM

    IMPLICIT NONE

    ! Declare parameters ...
    INTEGER(kind = INT64), PARAMETER                                            :: nx = 16_INT64
    INTEGER(kind = INT64), PARAMETER                                            :: ny = 32_INT64

    ! Declare variables ...
    LOGICAL(kind = INT8), ALLOCATABLE, DIMENSION(:, :)                          :: arr

    ! Allocate array ...
    CALL sub_allocate_array(arr, "arr", nx, ny, .FALSE._INT8)

    ! Populate array ...
    arr = .FALSE._INT8
    arr(nx / 2_INT64, :) = .TRUE._INT8
    arr(:, ny / 2_INT64) = .TRUE._INT8

    ! Save array as PBM ...
    CALL sub_save_array_as_PBM(nx, ny, arr, "test09.pbm")

    ! Clean up ...
    DEALLOCATE(arr)
END PROGRAM test09
