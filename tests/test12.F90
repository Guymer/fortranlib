PROGRAM main
    ! Import modules ...
    USE ISO_FORTRAN_ENV
    USE mod_safe, ONLY: func_interpolate_points

    IMPLICIT NONE

    ! Declare variables ...
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
    WRITE(fmt = '("Does the task think that everything worked? ", l1)', unit = OUTPUT_UNIT) func_interpolate_points(x1, x2, y1, y2, x) == 2.0e0_REAL64
    FLUSH(unit = OUTPUT_UNIT)

    ! Populate the y values, interpolate and print summary ...
    y1 = 3.0e0_REAL64
    y2 = 1.0e0_REAL64
    WRITE(fmt = '("Does the task think that everything worked? ", l1)', unit = OUTPUT_UNIT) func_interpolate_points(x1, x2, y1, y2, x) == 2.0e0_REAL64
    FLUSH(unit = OUTPUT_UNIT)
END PROGRAM main
