ELEMENTAL FUNCTION func_t_PDF(x, dof) RESULT(ans)
    ! NOTE: See https://en.wikipedia.org/wiki/Student's_t-distribution

    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    REAL(kind = REAL64)                                                         :: ans
    REAL(kind = REAL64), INTENT(in)                                             :: dof
    REAL(kind = REAL64), INTENT(in)                                             :: x

    ! Declare internal variables ...
    REAL(kind = REAL64)                                                         :: dofp1

    ! Check if the supplied number of degrees of freedom is a special case and
    ! return a short-cut if it is (see the "Special Cases" section of the
    ! Wikipedia article) ...
    IF(dof <= 0.0e0_REAL64)THEN
        ! Set value ...
        ans = 0.0e0_REAL64
    ELSE IF(dof == 1.0e0_REAL64)THEN
        ! Set value ...
        ans = 1.0e0_REAL64 / (const_pi * (1.0e0_REAL64 + (x ** 2)))
    ELSE IF(dof == 2.0e0_REAL64)THEN
        ! Set value ...
        ans = 1.0e0_REAL64 / (2.0e0_REAL64 * SQRT(2.0e0_REAL64) * (1.0e0_REAL64 + 0.5e0_REAL64 * (x ** 2)) ** 1.5e0_REAL64)
    ELSE IF(dof == 3.0e0_REAL64)THEN
        ! Set value ...
        ans = 2.0e0_REAL64 / (const_pi * SQRT(3.0e0_REAL64) * (1.0e0_REAL64 + (x ** 2) / 3.0e0_REAL64) ** 2)
    ELSE IF(dof == 4.0e0_REAL64)THEN
        ! Set value ...
        ans = 3.0e0_REAL64 / (8.0e0_REAL64 * (1.0e0_REAL64 + 0.25e0_REAL64 * (x ** 2)) ** 2.5e0_REAL64)
    ELSE IF(dof == 5.0e0_REAL64)THEN
        ! Set value ...
        ans = 8.0e0_REAL64 / (3.0e0_REAL64 * const_pi * SQRT(5.0e0_REAL64) * (1.0e0_REAL64 + 0.2e0_REAL64 * (x ** 2)) ** 3)
    ELSE
        ! Create short-hand ...
        dofp1 = dof + 1.0e0_REAL64

        ! Calculate PDF ...
        ans = GAMMA(0.5e0_REAL64 * dofp1) * ((1.0e0_REAL64 + (x ** 2) / dof) ** (- 0.5e0_REAL64 * dofp1)) / (SQRT(dof * const_pi) * GAMMA(0.5e0_REAL64 * dof))
    END IF
END FUNCTION func_t_PDF
