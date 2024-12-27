!> @brief This function returns the integral of the supplied 1D tabulated data.
!>
!> @param[in] x1 The variable of integration.
!>
!> @param[in] arr The integrand.
!>
!> @note "x1" does not have to be uniform.
!>
!> @warning "x1" must be the same dimension as "arr".
!>

FUNCTION func_integrate_1D_REAL128_real_array(x1, arr) RESULT(ans)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables ...
    REAL(kind = REAL128), DIMENSION(:), INTENT(in)                              :: x1
    REAL(kind = REAL128), DIMENSION(:), INTENT(in)                              :: arr

    ! Declare output variables ...
    REAL(kind = REAL128)                                                        :: ans

    ! Declare internal variables ...
    INTEGER(kind = INT64)                                                       :: i1
    INTEGER(kind = INT64)                                                       :: n1

    ! Find size of input array ...
    n1 = SIZE(x1, kind = INT64)

    ! Set starting value ...
    ans = 0.0e0_REAL128

    !$omp parallel                                                              &
    !$omp default(none)                                                         &
    !$omp private(i1)                                                           &
    !$omp reduction(+:ans)                                                      &
    !$omp shared(arr)                                                           &
    !$omp shared(n1)                                                            &
    !$omp shared(x1)
        ! Set starting value ...
        ans = 0.0e0_REAL128

        !$omp do                                                                &
        !$omp schedule(dynamic)
            ! Loop over x ...
            DO i1 = 1_INT64, n1 - 1_INT64
                ! Integrate via the trapezium rule ...
                ans = ans + (x1(i1 + 1_INT64) - x1(i1)) * 0.5e0_REAL128 * (arr(i1) + arr(i1 + 1_INT64))
            END DO
        !$omp end do
    !$omp end parallel
END FUNCTION func_integrate_1D_REAL128_real_array
