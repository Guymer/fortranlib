PURE FUNCTION func_var(n, arr, dof) RESULT(ans)
    ! NOTE: See https://numpy.org/doc/stable/reference/generated/numpy.var.html

    ! NOTE: In standard statistical practice:
    !         * dof=1 provides an unbiased estimator of the variance of a
    !           hypothetical infinite population
    !         * dof=0 provides a maximum likelihood estimate of the variance for
    !           normally distributed variables

    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: n
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: dof
    REAL(kind = REAL64)                                                         :: ans
    REAL(kind = REAL64), DIMENSION(n), INTENT(in)                               :: arr

    ! Declare internal variables ...
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: tmp

    ! Allocate array ...
    ! NOTE: I decided not to use "sub_allocate_array()" here so as to keep this
    !       function "PURE".
    ALLOCATE(tmp(n))

    ! Calculate the squared deviations from the mean ...
    tmp = ABS(arr - func_mean(n, arr, 0_INT64)) ** 2

    ! Calculate the variance ...
    IF(PRESENT(dof))THEN
        ans = func_mean(n, tmp, dof)
    ELSE
        ans = func_mean(n, tmp, 0_INT64)
    END IF

    ! Clean up ...
    DEALLOCATE(tmp)
END FUNCTION func_var
