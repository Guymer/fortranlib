MODULE mod_test06
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
        USE OMP_LIB
        USE mod_safe, ONLY: sub_allocate_array

        IMPLICIT NONE

        ! Declare inputs/outputs ...
        REAL(kind = REAL64)                                                     :: ans

        ! Declare variables ...
        INTEGER                                                                 :: nthreads
        REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                          :: x
        REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                          :: y

        ! Set starting value ...
        ans = 0.0e0_REAL64

        !$omp parallel                                                          &
        !$omp default(none)                                                     &
        !$omp private(x)                                                        &
        !$omp private(y)                                                        &
        !$omp shared(nthreads)                                                  &
        !$omp reduction(+:ans)
            !$omp single
                ! Set thread count ...
                nthreads = OMP_GET_NUM_THREADS()
            !$omp end single

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
        !$omp end parallel

        ! Calculate average pi ...
        ans = ans / REAL(nthreads, kind = REAL64)
    END FUNCTION calc_pi
END MODULE mod_test06

PROGRAM test06
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    ! Import my modules ...
    USE mod_safe, ONLY: const_pi
    USE mod_test06

    IMPLICIT NONE

    ! Declare variables ...
    REAL(kind = REAL64)                                                         :: pi

    ! Calculate pi ...
    pi = calc_pi()

    ! Print summary ...
    WRITE(fmt = '("How does real pi compare to calculated pi? real = ", f11.9, "; calc = ", f11.9)', unit = OUTPUT_UNIT) const_pi, pi
    FLUSH(unit = OUTPUT_UNIT)
END PROGRAM test06
