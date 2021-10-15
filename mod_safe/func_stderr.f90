PURE FUNCTION func_stderr(arr, dof) RESULT(ans)
    ! NOTE: See https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.sem.html

    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: dof
    REAL(kind = REAL64)                                                         :: ans
    REAL(kind = REAL64), DIMENSION(:), INTENT(in)                               :: arr

    ! Declare internal variables ...
    INTEGER(kind = INT64)                                                       :: n

    ! Find size of array ...
    n = SIZE(arr, kind = INT64)

    ! Calculate the standard error ...
    IF(PRESENT(dof))THEN
        ans = func_stddev(arr, dof) / SQRT(REAL(n, kind = REAL64))
    ELSE
        ans = func_stddev(arr, 1_INT64) / SQRT(REAL(n, kind = REAL64))
    END IF
END FUNCTION func_stderr
