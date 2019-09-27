!> @brief This function returns the linearly interpolated y value between the two supplied points.
!>
!> @param[in] x1 The first x value.
!>
!> @param[in] x2 The second x value.
!>
!> @param[in] y1 The first y value.
!>
!> @param[in] y2 The second y value.
!>
!> @param[in] x The x value where the y value is desired.
!>

FUNCTION func_interpolate_REAL64_points(x1, x2, y1, y2, x) RESULT(ans)
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables ...
    REAL(kind = REAL64), INTENT(in)                                             :: x
    REAL(kind = REAL64), INTENT(in)                                             :: x1
    REAL(kind = REAL64), INTENT(in)                                             :: x2
    REAL(kind = REAL64), INTENT(in)                                             :: y1
    REAL(kind = REAL64), INTENT(in)                                             :: y2

    ! Declare output variables ...
    REAL(kind = REAL64)                                                         :: ans

    ! Calculate value ...
    ans = (y1 * (x2 - x) + y2 * (x - x1)) / (x2 - x1)
END FUNCTION func_interpolate_REAL64_points
