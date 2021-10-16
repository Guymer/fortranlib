ELEMENTAL FUNCTION func_ttest_pdf(x, dof) RESULT(ans)
    ! NOTE: See https://en.wikipedia.org/wiki/Student's_t-distribution

    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    REAL(kind = REAL64)                                                         :: ans
    REAL(kind = REAL64), INTENT(in)                                             :: dof
    REAL(kind = REAL64), INTENT(in)                                             :: x

    ! Declare internal variables ...
    REAL(kind = REAL64)                                                         :: dofp1

    ! Check that this value of dof means that the distribution exists ...
    IF(dof .GT. 0.0e0_REAL64)THEN
        ! Create short-hand ...
        dofp1 = dof + 1.0e0_REAL64

        ! Calculate PDF ...
        ans = GAMMA(dofp1 / 2.0e0_REAL64) * ((1.0e0_REAL64 + (x ** 2 / dof)) ** (- dofp1 / 2.0e0_REAL64)) / (SQRT(dof * const_pi) * GAMMA(dof / 2.0e0_REAL64))
    ELSE
        ! Set value ...
        ans = 0.0e0_REAL64
    END IF
END FUNCTION func_ttest_pdf
