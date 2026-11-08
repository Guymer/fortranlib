PROGRAM test12
    ! Import standard modules ...
    USE, INTRINSIC :: ISO_FORTRAN_ENV

    ! Import my modules ...
    USE mod_safe, ONLY: func_interpolate_points

    IMPLICIT NONE

    ! Declare variables ...
    REAL(kind = REAL64)                                                         :: eps
    REAL(kind = REAL64)                                                         :: x
    REAL(kind = REAL64)                                                         :: x1
    REAL(kind = REAL64)                                                         :: x2
    REAL(kind = REAL64)                                                         :: y1
    REAL(kind = REAL64)                                                         :: y2

    ! Populate the x values ...
    x1 = 1.0e0_REAL64
    x  = 2.0e0_REAL64
    x2 = 3.0e0_REAL64

    ! Populate the y values, interpolate and print summary ...
    y1 = 1.0e0_REAL64
    y2 = 3.0e0_REAL64
    eps = ABS(1.0e0_REAL64 - func_interpolate_points(x1, x2, y1, y2, x) / 2.0e0_REAL64)
    WRITE(FMT = '("Does the task think that everything worked? ", l1)', UNIT = OUTPUT_UNIT) eps <= EPSILON(eps)
    FLUSH(UNIT = OUTPUT_UNIT)

    ! Populate the y values, interpolate and print summary ...
    y1 = 3.0e0_REAL64
    y2 = 1.0e0_REAL64
    eps = ABS(1.0e0_REAL64 - func_interpolate_points(x1, x2, y1, y2, x) / 2.0e0_REAL64)
    WRITE(FMT = '("Does the task think that everything worked? ", l1)', UNIT = OUTPUT_UNIT) eps <= EPSILON(eps)
    FLUSH(UNIT = OUTPUT_UNIT)
END PROGRAM test12
