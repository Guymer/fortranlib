ELEMENTAL FUNCTION func_ttest_cdf(x, dof) RESULT(ans)
    ! NOTE: See https://en.wikipedia.org/wiki/Student's_t-distribution

    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    REAL(kind = REAL64)                                                         :: ans
    REAL(kind = REAL64), INTENT(in)                                             :: dof
    REAL(kind = REAL64), INTENT(in)                                             :: x

    ! Declare internal variables ...
    REAL(kind = REAL64)                                                         :: a
    REAL(kind = REAL64)                                                         :: b
    REAL(kind = REAL64)                                                         :: c
    REAL(kind = REAL64)                                                         :: dofp1
    REAL(kind = REAL64)                                                         :: z

    ! Create short-hands ...
    dofp1 = dof + 1.0e0_REAL64
    a = 0.5e0_REAL64
    b = dofp1 / 2.0e0_REAL64
    c = 1.5e0_REAL64
    z = - (x ** 2 / dof)

    ! Calculate CDF ...
    ans = 0.5e0_REAL64 + x * GAMMA(dofp1 / 2.0e0_REAL64) * func_hypergeometric(a, b, c, z) / (SQRT(dof * const_pi) * GAMMA(dof / 2.0e0_REAL64))
END FUNCTION func_ttest_cdf
