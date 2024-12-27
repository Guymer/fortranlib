!> @brief This function returns the integral of the supplied 2D tabulated data.
!>
!> @param[in] x1 The first variable of integration.
!>
!> @param[in] x2 The second variable of integration.
!>
!> @param[in] arr The integrand.
!>
!> @note "x1" and "x2" do not have to be uniform.
!>
!> @warning "x1" must be the same as the first dimension of "arr".
!>
!> @warning "x2" must be the same as the second dimension of "arr".
!>

FUNCTION func_integrate_2D_REAL128_real_array(x1, x2, arr) RESULT(ans)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables ...
    REAL(kind = REAL128), DIMENSION(:), INTENT(in)                              :: x1
    REAL(kind = REAL128), DIMENSION(:), INTENT(in)                              :: x2
    REAL(kind = REAL128), DIMENSION(:, :), INTENT(in)                           :: arr

    ! Declare output variables ...
    REAL(kind = REAL128)                                                        :: ans

    ! Declare internal variables ...
    INTEGER(kind = INT64)                                                       :: i1
    INTEGER(kind = INT64)                                                       :: i2
    INTEGER(kind = INT64)                                                       :: n1
    INTEGER(kind = INT64)                                                       :: n2

    ! Find size of input arrays ...
    n1 = SIZE(x1, kind = INT64)
    n2 = SIZE(x2, kind = INT64)

    ! Set starting value ...
    ans = 0.0e0_REAL128

    !$omp parallel                                                              &
    !$omp default(none)                                                         &
    !$omp private(i1)                                                           &
    !$omp private(i2)                                                           &
    !$omp reduction(+:ans)                                                      &
    !$omp shared(arr)                                                           &
    !$omp shared(n1)                                                            &
    !$omp shared(n2)                                                            &
    !$omp shared(x1)                                                            &
    !$omp shared(x2)
        ! Set starting value ...
        ans = 0.0e0_REAL128

        !$omp do                                                                &
        !$omp schedule(dynamic)
            ! Loop over x ...
            DO i1 = 1_INT64, n1 - 1_INT64
                ! Loop over y ...
                DO i2 = 1_INT64, n2 - 1_INT64
                    ! Integrate via the trapezium rule ...
                    ans = ans + (x1(i1 + 1_INT64) - x1(i1)) * (x2(i2 + 1_INT64) - x2(i2)) * 0.25e0_REAL128 * (arr(i1, i2) + arr(i1 + 1_INT64, i2) + arr(i1, i2 + 1_INT64) + arr(i1 + 1_INT64, i2 + 1_INT64))
                END DO
            END DO
        !$omp end do
    !$omp end parallel
END FUNCTION func_integrate_2D_REAL128_real_array
