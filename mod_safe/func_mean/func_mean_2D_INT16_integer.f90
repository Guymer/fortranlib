PURE FUNCTION func_mean_2D_INT16_integer(n1, n2, arr, dof) RESULT(ans)
    ! NOTE: See https://numpy.org/doc/stable/reference/generated/numpy.mean.html

    ! Import standard modules ...
    USE, INTRINSIC :: ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT64), INTENT(IN)                                           :: n1
    INTEGER(kind = INT64), INTENT(IN)                                           :: n2
    INTEGER(kind = INT64), INTENT(IN), OPTIONAL                                 :: dof
    INTEGER(kind = INT16)                                                       :: ans
    INTEGER(kind = INT16), DIMENSION(n1, n2), INTENT(IN)                        :: arr

    ! Calculate the mean ...
    IF(PRESENT(dof))THEN
        ans = NINT(SUM(REAL(arr, kind = REAL64)) / REAL(n1 * n2 - dof, kind = REAL64), kind = INT16)
    ELSE
        ans = NINT(SUM(REAL(arr, kind = REAL64)) / REAL(n1 * n2, kind = REAL64), kind = INT16)
    END IF
END FUNCTION func_mean_2D_INT16_integer
