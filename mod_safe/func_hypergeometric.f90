ELEMENTAL FUNCTION func_hypergeometric(a, b, c, z) RESULT(ans)
    ! NOTE: See https://en.wikipedia.org/wiki/Hypergeometric_function
    ! NOTE: See https://docs.scipy.org/doc/scipy/reference/generated/scipy.special.hyp2f1.html

    USE IEEE_ARITHMETIC
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    REAL(kind = REAL64)                                                         :: ans
    REAL(kind = REAL64), INTENT(in)                                             :: a
    REAL(kind = REAL64), INTENT(in)                                             :: b
    REAL(kind = REAL64), INTENT(in)                                             :: c
    REAL(kind = REAL64), INTENT(in)                                             :: z

    ! Declare internal parameters ...
    INTEGER(kind = INT64), PARAMETER                                            :: imax = 1024_INT64
    REAL(kind = REAL64), PARAMETER                                              :: epsmin = 1.0e-10_REAL64

    ! Declare internal variables ...
    INTEGER(kind = INT64)                                                       :: i
    REAL(kind = REAL64)                                                         :: eps
    REAL(kind = REAL64)                                                         :: n

    ! Initialize answer ...
    ans = 1.0e0_REAL64

    ! Loop over iterations ...
    DO i = 1_INT64, imax
        ! Create short-hand ...
        n = REAL(i, kind = REAL64)

        ! Calculate increment and stop looping if it is not finite ...
        eps = (func_rising_factorial(a, n) * func_rising_factorial(b, n) * (z ** i)) / (func_rising_factorial(c, n) * func_factorial(n))
        IF(.NOT. IEEE_IS_FINITE(eps))THEN
            EXIT
        END IF

        ! Increment answer ...
        ans = ans + eps

        ! Stop looping if the answer has converged ...
        IF(ABS(eps / ans) .LE. epsmin)THEN
            EXIT
        END IF
    END DO
END FUNCTION func_hypergeometric
