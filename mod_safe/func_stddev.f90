PURE FUNCTION func_stddev(arr, dof) RESULT(ans)
    ! NOTE: See https://numpy.org/doc/stable/reference/generated/numpy.std.html

    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: dof
    REAL(kind = REAL64)                                                         :: ans
    REAL(kind = REAL64), DIMENSION(:), INTENT(in)                               :: arr

    ! Calculate the standard deviation ...
    IF(PRESENT(dof))THEN
        ans = SQRT(func_var(arr, dof))
    ELSE
        ans = SQRT(func_var(arr, 0_INT64))
    END IF
END FUNCTION func_stddev
