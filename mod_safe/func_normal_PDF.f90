ELEMENTAL FUNCTION func_normal_PDF(x, mean, stddev) RESULT(ans)
    ! NOTE: See https://en.wikipedia.org/wiki/Normal_distribution

    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    REAL(kind = REAL64)                                                         :: ans
    REAL(kind = REAL64), INTENT(in)                                             :: mean
    REAL(kind = REAL64), INTENT(in)                                             :: stddev
    REAL(kind = REAL64), INTENT(in)                                             :: x

    ! Declare internal variables ...
    REAL(kind = REAL64)                                                         :: tmp

    ! Calculate short-hand ...
    tmp = (x - mean) / (stddev * SQRT(2.0e0_REAL64))

    ! Calculate PDF ...
    ans = EXP(-(tmp ** 2)) / (stddev * SQRT(2.0e0_REAL64 * const_pi))
END FUNCTION func_normal_PDF
