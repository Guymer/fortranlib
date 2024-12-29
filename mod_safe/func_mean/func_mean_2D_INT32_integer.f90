PURE FUNCTION func_mean_2D_INT32_integer(n1, n2, arr, dof) RESULT(ans)
    ! NOTE: See https://numpy.org/doc/stable/reference/generated/numpy.mean.html

    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: n1
    INTEGER(kind = INT64), INTENT(in)                                           :: n2
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: dof
    INTEGER(kind = INT32)                                                       :: ans
    INTEGER(kind = INT32), DIMENSION(n1, n2), INTENT(in)                        :: arr

    ! Calculate the mean ...
    IF(PRESENT(dof))THEN
        ans = NINT(SUM(REAL(arr, kind = REAL64)) / REAL(n1 * n2 - dof, kind = REAL64), kind = INT32)
    ELSE
        ans = NINT(SUM(REAL(arr, kind = REAL64)) / REAL(n1 * n2, kind = REAL64), kind = INT32)
    END IF
END FUNCTION func_mean_2D_INT32_integer
