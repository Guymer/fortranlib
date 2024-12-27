ELEMENTAL FUNCTION func_degrees(x) RESULT(ans)
    ! This function returns the passed angle converted from radians to degrees.

    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables ...
    REAL(kind = REAL64), INTENT(in)                                             :: x        ! The input angle in radians.

    ! Declare output variables ...
    REAL(kind = REAL64)                                                         :: ans      ! The output angle in degrees.

    ! Set value ...
    ans = 180.0e0_REAL64 * x / const_pi                                         ! [°]
END FUNCTION func_degrees
