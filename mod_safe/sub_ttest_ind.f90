PURE SUBROUTINE sub_ttest_ind(n1, n2, arr1, arr2, similarVar, t, p)
    ! NOTE: See https://en.wikipedia.org/wiki/Student's_t-test
    !         * "Equal or unequal sample sizes, similar variances" section
    !         * "Equal or unequal sample sizes, unequal variances" section

    ! NOTE: See https://en.wikipedia.org/wiki/Welch's_t-test

    ! NOTE: See https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.ttest_ind.html

    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: n1
    INTEGER(kind = INT64), INTENT(in)                                           :: n2
    LOGICAL(kind = INT8), INTENT(in)                                            :: similarVar
    REAL(kind = REAL64), INTENT(out)                                            :: p
    REAL(kind = REAL64), INTENT(out)                                            :: t
    REAL(kind = REAL64), DIMENSION(n1), INTENT(in)                              :: arr1
    REAL(kind = REAL64), DIMENSION(n2), INTENT(in)                              :: arr2

    ! Declare internal variables ...
    REAL(kind = REAL64)                                                         :: dof
    REAL(kind = REAL64)                                                         :: s
    REAL(kind = REAL64)                                                         :: mean1
    REAL(kind = REAL64)                                                         :: mean2
    REAL(kind = REAL64)                                                         :: var1
    REAL(kind = REAL64)                                                         :: var1n1
    REAL(kind = REAL64)                                                         :: var2
    REAL(kind = REAL64)                                                         :: var2n2

    ! Find means ...
    mean1 = func_mean(n1, arr1)
    mean2 = func_mean(n2, arr2)

    ! Find variances ...
    var1 = func_var(n1, arr1, 1_INT64)
    var2 = func_var(n2, arr2, 1_INT64)

    ! Check if the variances are supposed to be similar ...
    IF(similarVar)THEN
        ! Calculate the degrees-of-freedom, the variance and the t-statistic ...
        dof = REAL(n1 + n2 - 2_INT64, kind = REAL64)
        s = SQRT((REAL(n1 - 1_INT64, kind = REAL64) * var1 + REAL(n2 - 1_INT64, kind = REAL64) * var2) / dof)
        t = (mean1 - mean2) / (s * SQRT(1.0e0_REAL64 / REAL(n1, kind = REAL64) + 1.0e0_REAL64 / REAL(n2, kind = REAL64)))
    ELSE
        ! Create short-hands ...
        var1n1 = var1 / REAL(n1, kind = REAL64)
        var2n2 = var2 / REAL(n2, kind = REAL64)

        ! Calculate the degrees-of-freedom, the variance and the t-statistic ...
        dof = ((var1n1 + var2n2) ** 2) / (((var1n1 ** 2) / REAL(n1 - 1_INT64, kind = REAL64)) + ((var2n2 ** 2) / REAL(n2 - 1_INT64, kind = REAL64)))
        s = SQRT(var1n1 + var2n2)
        t = (mean1 - mean2) / s
    END IF

    ! Calculate probability ...
    p = 2.0e0_REAL64 * (1.0e0_REAL64 - func_t_CDF(ABS(t), dof))
END SUBROUTINE sub_ttest_ind
