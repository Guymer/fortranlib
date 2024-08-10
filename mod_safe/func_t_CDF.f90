ELEMENTAL FUNCTION func_t_CDF(x, dof) RESULT(ans)
    ! NOTE: See https://en.wikipedia.org/wiki/Student's_t-distribution
    ! TODO: Given that func_hypergeometric() does not currently work when |z|>=1
    !       then this function should not attempt direct calculation of the CDF,
    !       but should rather integrate the PDF instead.

    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    REAL(kind = REAL64)                                                         :: ans
    REAL(kind = REAL64), INTENT(in)                                             :: dof
    REAL(kind = REAL64), INTENT(in)                                             :: x

    ! Declare constants ...
    REAL(kind = REAL64), PARAMETER                                              :: a = 0.5e0_REAL64
    REAL(kind = REAL64), PARAMETER                                              :: c = 1.5e0_REAL64

    ! Declare internal variables ...
    REAL(kind = REAL64)                                                         :: b
    REAL(kind = REAL64)                                                         :: dofp1
    REAL(kind = REAL64)                                                         :: z

    ! Check if the supplied number of degrees of freedom is a special case and
    ! return a short-cut if it is (see the "Special Cases" section of the
    ! Wikipedia article) ...
    IF(dof <= 0.0e0_REAL64)THEN
        ! Set value ...
        ans = 0.0e0_REAL64
    ELSE IF(dof == 1.0e0_REAL64)THEN
        ! Set value ...
        ans = 0.5e0_REAL64 + ATAN(x) / const_pi
    ELSE IF(dof == 2.0e0_REAL64)THEN
        ! Set value ...
        ans = 0.5e0_REAL64 + x / (2.0e0_REAL64 * SQRT(2.0e0_REAL64) * SQRT(1.0e0_REAL64 + 0.5e0_REAL64 * (x ** 2)))
    ELSE IF(dof == 3.0e0_REAL64)THEN
        ! Set value ...
        ans = 0.5e0_REAL64 + ((x / (SQRT(3.0e0_REAL64) * (1.0e0_REAL64 + (x ** 2) / 3.0e0_REAL64))) + ATAN(x / SQRT(3.0e0_REAL64))) / const_pi
    ELSE IF(dof == 4.0e0_REAL64)THEN
        ! Set value ...
        ans = 0.5e0_REAL64 + 3.0e0_REAL64 * 0.125e0_REAL64 * (x / SQRT(1.0e0_REAL64 + 0.25e0_REAL64 * (x ** 2))) * (1.0e0_REAL64 - (x ** 2) / (12.0e0_REAL64 * (1.0e0_REAL64 + 0.25e0_REAL64 * (x ** 2))))
    ELSE IF(dof == 5.0e0_REAL64)THEN
        ! Set value ...
        ans = 0.5e0_REAL64 + ((x / (SQRT(5.0e0_REAL64) * (1.0e0_REAL64 + 0.2e0_REAL64 * (x ** 2)))) * (1.0e0_REAL64 + 2.0e0_REAL64 / (3.0e0_REAL64 * (1.0e0_REAL64 + 0.2e0_REAL64 * (x ** 2)))) + ATAN(x / SQRT(5.0e0_REAL64))) / const_pi
    ELSE
        ! Create short-hands ...
        dofp1 = dof + 1.0e0_REAL64
        b = 0.5e0_REAL64 * dofp1
        z = - (x ** 2) / dof

        ! Calculate CDF ...
        ans = a + x * GAMMA(b) * func_hypergeometric(a, b, c, z) / (SQRT(dof * const_pi) * GAMMA(0.5e0_REAL64 * dof))
    END IF
END FUNCTION func_t_CDF
