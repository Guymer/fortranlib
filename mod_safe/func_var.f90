PURE FUNCTION func_var(arr, dof) RESULT(ans)
    ! NOTE: See https://numpy.org/doc/stable/reference/generated/numpy.var.html

    ! NOTE: In standard statistical practice:
    !         * dof=1 provides an unbiased estimator of the variance of a
    !           hypothetical infinite population
    !         * dof=0 provides a maximum likelihood estimate of the variance for
    !           normally distributed variables

    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: dof
    REAL(kind = REAL64)                                                         :: ans
    REAL(kind = REAL64), DIMENSION(:), INTENT(in)                               :: arr

    ! Declare internal variables ...
    INTEGER(kind = INT64)                                                       :: n
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: tmp

    ! Find size of array ...
    n = SIZE(arr, kind = INT64)

    ! Allocate array ...
    ALLOCATE(tmp(n))

    ! Calculate the squared deviations from the mean ...
    tmp = ABS(arr - func_mean(arr, 0_INT64)) ** 2

    ! Calculate the variance ...
    IF(PRESENT(dof))THEN
        ans = func_mean(tmp, dof)
    ELSE
        ans = func_mean(tmp, 0_INT64)
    END IF

    ! Clean up ...
    DEALLOCATE(tmp)
END FUNCTION func_var
