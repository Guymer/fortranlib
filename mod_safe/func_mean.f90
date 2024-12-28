PURE FUNCTION func_mean(n, arr, dof) RESULT(ans)
    ! NOTE: See https://numpy.org/doc/stable/reference/generated/numpy.mean.html

    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: n
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: dof
    REAL(kind = REAL64)                                                         :: ans
    REAL(kind = REAL64), DIMENSION(n), INTENT(in)                               :: arr

    ! Calculate the mean ...
    IF(PRESENT(dof))THEN
        ans = SUM(arr) / REAL(n - dof, kind = REAL64)
    ELSE
        ans = SUM(arr) / REAL(n, kind = REAL64)
    END IF
END FUNCTION func_mean
