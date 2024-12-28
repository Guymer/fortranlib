PROGRAM test11
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    ! Import my modules ...
    USE mod_safe, ONLY: sub_allocate_array, sub_save_array_as_PPM

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

    ! Save array as PPMs ...
    CALL sub_save_array_as_PPM(nx, ny, arr, "test11_fire.ppm" , "fire" )
    CALL sub_save_array_as_PPM(nx, ny, arr, "test11_jet.ppm"  , "jet"  )
    CALL sub_save_array_as_PPM(nx, ny, arr, "test11_g2b.ppm"  , "g2b"  )
    CALL sub_save_array_as_PPM(nx, ny, arr, "test11_r2g.ppm"  , "r2g"  )
    CALL sub_save_array_as_PPM(nx, ny, arr, "test11_r2o2g.ppm", "r2o2g")

    ! Clean up ...
    DEALLOCATE(arr)
END PROGRAM test11
