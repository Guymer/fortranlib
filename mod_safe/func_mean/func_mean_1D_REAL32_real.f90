PURE FUNCTION func_mean_1D_REAL32_real(n, arr, dof) RESULT(ans)
    ! NOTE: See https://numpy.org/doc/stable/reference/generated/numpy.mean.html

    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: n1
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: dof
    REAL(kind = REAL32)                                                         :: ans
    REAL(kind = REAL32), DIMENSION(n), INTENT(in)                               :: arr

    ! Calculate the mean ...
    IF(PRESENT(dof))THEN
        ans = REAL(SUM(REAL(arr, kind = REAL64)) / REAL(n1 - dof, kind = REAL64), kind = REAL32)
    ELSE
        ans = REAL(SUM(REAL(arr, kind = REAL64)) / REAL(n1, kind = REAL64), kind = REAL32)
    END IF
END FUNCTION func_mean_1D_REAL32_real
