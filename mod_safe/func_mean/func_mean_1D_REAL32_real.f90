PURE FUNCTION func_mean_1D_REAL32_real(n, arr, dof) RESULT(ans)
    ! NOTE: See https://numpy.org/doc/stable/reference/generated/numpy.mean.html

    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: n
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: dof
    REAL(kind = REAL32)                                                         :: ans
    REAL(kind = REAL32), DIMENSION(n), INTENT(in)                               :: arr

    ! Calculate the mean ...
    IF(PRESENT(dof))THEN
        ans = SUM(arr) / REAL(n - dof, kind = REAL32)
    ELSE
        ans = SUM(arr) / REAL(n, kind = REAL32)
    END IF
END FUNCTION func_mean_1D_REAL32_real
