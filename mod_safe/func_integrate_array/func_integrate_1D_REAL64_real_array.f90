!> @brief This function returns the integral of the supplied 1D tabulated data.
!>
!> @param[in] x The variable of integration.
!>
!> @param[in] array The integrand.
!>
!> @note "x" does not have to be uniform.
!>
!> @warning "x" must be the same dimension as "array".
!>
FUNCTION func_integrate_1D_REAL64_real_array(x, array) RESULT(ans)
    USE ISO_FORTRAN_ENV
    USE OMP_LIB

    IMPLICIT NONE

    ! Declare input variables ...
    REAL(kind = REAL64), DIMENSION(:), INTENT(in)                               :: x
    REAL(kind = REAL64), DIMENSION(:), INTENT(in)                               :: array

    ! Declare output variables ...
    REAL(kind = REAL64)                                                         :: ans

    ! Declare internal variables ...
    INTEGER(kind = INT64)                                                       :: i_x
    INTEGER(kind = INT64)                                                       :: n_x

    ! Find size of input array ...
    n_x = SIZE(x, kind = INT64)

    ! Set starting value ...
    ans = 0.0e0_REAL64

    !$omp parallel                                                              &
    !$omp default(none)                                                         &
    !$omp private(i_x)                                                          &
    !$omp shared(n_x)                                                           &
    !$omp shared(x)                                                             &
    !$omp shared(array)                                                         &
    !$omp reduction(+:ans)
        !$omp do &
        !$omp schedule(dynamic)
            ! Loop over x ...
            DO i_x = 1_INT64, n_x - 1_INT64
                ! Integrate via the trapezium rule ...
                ans = ans + (x(i_x + 1_INT64) - x(i_x)) * 0.5e0_REAL64 * (array(i_x) + array(i_x + 1_INT64))
            END DO
        !$omp end do
    !$omp end parallel
END FUNCTION func_integrate_1D_REAL64_real_array
