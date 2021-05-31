ELEMENTAL FUNCTION func_radians(x) RESULT(ans)
    ! This function returns the passed angle converted from degrees to radians.

    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables ...
    REAL(kind = REAL64), INTENT(in)                                             :: x        ! The input angle in degrees.

    ! Declare output variables ...
    REAL(kind = REAL64)                                                         :: ans      ! The output angle in radians.

    ! Set value ...
    ans = const_pi * x / 180.0e0_REAL64                                         ! [rad]
END FUNCTION func_radians
