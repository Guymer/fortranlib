MODULE mod_test04
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare parameters ...
    INTEGER(kind = INT64), PARAMETER                                            :: nsamples = 1000_INT64

    CONTAINS

    ! Define functions ...
    FUNCTION calc_pi() RESULT(ans)
        ! Import standard modules ...
        USE ISO_FORTRAN_ENV
        USE mod_safe, ONLY: sub_allocate_array

        IMPLICIT NONE

        ! Declare inputs/outputs ...
        REAL(kind = REAL64)                                                     :: ans

        ! Declare variables ...
        REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                          :: x
        REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                          :: y

        ! Allocate arrays ...
        CALL sub_allocate_array(x, "x", nsamples, .FALSE._INT8)
        CALL sub_allocate_array(y, "y", nsamples, .FALSE._INT8)

        ! Fill arrays with random numbers ...
        CALL RANDOM_NUMBER(x)
        CALL RANDOM_NUMBER(y)

        ! Calculate pi ...
        ans = 4.0e0_REAL64 * REAL(COUNT(HYPOT(x, y) <= 1.0e0_REAL64), kind = REAL64) / REAL(nsamples, kind = REAL64)

        ! Clean up ...
        DEALLOCATE(x)
        DEALLOCATE(y)
    END FUNCTION calc_pi
END MODULE mod_test04

PROGRAM test04
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    ! Import my modules ...
    USE mod_safe, ONLY: const_pi
    USE mod_test04

    IMPLICIT NONE

    ! Declare variables ...
    REAL(kind = REAL64)                                                         :: pi

    ! Calculate pi ...
    pi = calc_pi()

    ! Print summary ...
    WRITE(fmt = '("How does real pi compare to calculated pi? real = ", f11.9, "; calc = ", f11.9)', unit = OUTPUT_UNIT) const_pi, pi
    FLUSH(unit = OUTPUT_UNIT)
END PROGRAM test04
