ELEMENTAL FUNCTION func_factorial(x) result(ans)
    ! NOTE: See https://en.wikipedia.org/wiki/Factorial

    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    REAL(kind = REAL64)                                                         :: ans
    REAL(kind = REAL64), INTENT(in)                                             :: x

    ! Set value ...
    ans = GAMMA(x + 1.0e0_REAL64)
END FUNCTION func_factorial
