PROGRAM test13
    ! Import modules ...
    USE ISO_FORTRAN_ENV
    USE mod_safe, ONLY: sub_solve_quadratic_equation

    IMPLICIT NONE

    ! Declare variables ...
    REAL(kind = REAL64)                                                         :: a
    REAL(kind = REAL64)                                                         :: b
    REAL(kind = REAL64)                                                         :: c
    REAL(kind = REAL64)                                                         :: x1
    REAL(kind = REAL64)                                                         :: x2

    ! Populate the coefficients ...
    ! NOTE: These 3 sets of coefficients that have been commented out are the 3
    !       examples from the following Wikipedia article:
    !         * https://en.wikipedia.org/wiki/Loss_of_significance
    ! a = 1.0e0_REAL64
    ! b = 200.0e0_REAL64
    ! c = -0.000015e0_REAL64
    ! a = 1.0e0_REAL64
    ! b = -1.786737601482363e0_REAL64
    ! c = 2.054360090947453e-8_REAL64
    ! a = 94906265.625e0_REAL64
    ! b = -189812534.0e0_REAL64
    ! c = 94906268.375e0_REAL64
    a = 1.0e0_REAL64
    b = 5.0e0_REAL64
    c = -50.0e0_REAL64

    ! Solve and print summary ...
    CALL sub_solve_quadratic_equation(a, b, c, x1, x2)
    WRITE(fmt = '("Does the task think that everything worked? ", l1)', unit = OUTPUT_UNIT) x1 == -10.0e0_REAL64 .AND. x2 == 5.0e0_REAL64
    FLUSH(unit = OUTPUT_UNIT)
END PROGRAM test13
