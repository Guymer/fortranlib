PURE FUNCTION func_stderr(n, arr, dof) RESULT(ans)
    ! NOTE: See https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.sem.html

    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: n
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: dof
    REAL(kind = REAL64)                                                         :: ans
    REAL(kind = REAL64), DIMENSION(n), INTENT(in)                               :: arr

    ! Calculate the standard error ...
    IF(PRESENT(dof))THEN
        ans = func_stddev(n, arr, dof) / SQRT(REAL(n, kind = REAL64))
    ELSE
        ans = func_stddev(n, arr, 1_INT64) / SQRT(REAL(n, kind = REAL64))
    END IF
END FUNCTION func_stderr
