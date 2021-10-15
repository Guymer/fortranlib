ELEMENTAL FUNCTION func_falling_factorial(x, n) result(ans)
    ! NOTE: See https://en.wikipedia.org/wiki/Falling_and_rising_factorials

    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    REAL(kind = REAL64)                                                         :: ans
    REAL(kind = REAL64), INTENT(in)                                             :: n
    REAL(kind = REAL64), INTENT(in)                                             :: x

    ! Set value ...
    ans = GAMMA(x + 1.0e0_REAL64) / GAMMA(x - n + 1.0e0_REAL64)
END FUNCTION func_falling_factorial
