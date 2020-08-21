!> @brief This function returns the passed angle converted from radians to degrees.
!>
!> @param[in] x The angle in radians.
!>

ELEMENTAL FUNCTION func_degrees(x) RESULT(ans)
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables ...
    REAL(kind = REAL64), INTENT(in)                                             :: x

    ! Declare output variables ...
    REAL(kind = REAL64)                                                         :: ans

    ! Set value ...
    ans = 180.0e0_REAL64 * x / const_pi                                         ! [deg]
END FUNCTION func_degrees
