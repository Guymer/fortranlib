ELEMENTAL FUNCTION func_normal_CDF(x, mean, stddev) RESULT(ans)
    ! NOTE: See https://en.wikipedia.org/wiki/Normal_distribution

    ! Import standard modules ...
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

    ! Calculate CDF ...
    ans = 0.5e0_REAL64 * (1.0e0_REAL64 + ERF(tmp))
END FUNCTION func_normal_CDF
