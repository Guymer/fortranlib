!> @brief This function returns the passed angle converted from degrees to radians.
!>
!> @param[in] x The angle in degrees.
!>

ELEMENTAL FUNCTION func_radians(x) RESULT(ans)
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables ...
    REAL(kind = REAL64), INTENT(in)                                             :: x

    ! Declare output variables ...
    REAL(kind = REAL64)                                                         :: ans

    ! Set value ...
    ans = const_pi * x / 180.0e0_REAL64                                         ! [rad]
END FUNCTION func_radians
