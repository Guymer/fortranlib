PROGRAM main
    ! Import modules ...
    USE ISO_FORTRAN_ENV
    USE mod_safe, ONLY: const_c, const_eps0, const_mu0

    IMPLICIT NONE

    ! Declare variables ...
    REAL(kind = REAL64)                                                         :: tmp

    ! Calculate the speed of light in a vacuum ...
    tmp = 1.0e0_REAL64 / SQRT(const_eps0 * const_mu0)                           ! [m/s]

    ! Print summary ...
    WRITE(fmt = '("Does the task think that everything worked? ", l1)', unit = OUTPUT_UNIT) const_c == tmp
    FLUSH(unit = OUTPUT_UNIT)
END PROGRAM main
