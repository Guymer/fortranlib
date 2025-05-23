PURE FUNCTION func_mean_1D_INT64_integer(n1, arr, dof) RESULT(ans)
    ! NOTE: See https://numpy.org/doc/stable/reference/generated/numpy.mean.html

    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: n1
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: dof
    INTEGER(kind = INT64)                                                       :: ans
    INTEGER(kind = INT64), DIMENSION(n1), INTENT(in)                            :: arr

    ! Calculate the mean ...
    IF(PRESENT(dof))THEN
        ans = NINT(SUM(REAL(arr, kind = REAL64)) / REAL(n1 - dof, kind = REAL64), kind = INT64)
    ELSE
        ans = NINT(SUM(REAL(arr, kind = REAL64)) / REAL(n1, kind = REAL64), kind = INT64)
    END IF
END FUNCTION func_mean_1D_INT64_integer
