!> @brief This function returns the integral of the supplied 2D tabulated data.
!>
!> @param[in] x The first variable of integration.
!>
!> @param[in] y The second variable of integration.
!>
!> @param[in] array The integrand.
!>
!> @note "x" and "y" do not have to be uniform.
!>
!> @warning "x" must be the same as the first dimension of "array".
!>
!> @warning "y" must be the same as the second dimension of "array".
!>
FUNCTION func_integrate_2D_REAL64_real_array(x, y, array) RESULT(ans)
    USE ISO_FORTRAN_ENV
    USE OMP_LIB

    IMPLICIT NONE

    ! Declare input variables ...
    REAL(kind = REAL64), DIMENSION(:), INTENT(in)                               :: x
    REAL(kind = REAL64), DIMENSION(:), INTENT(in)                               :: y
    REAL(kind = REAL64), DIMENSION(:, :), INTENT(in)                            :: array

    ! Declare output variables ...
    REAL(kind = REAL64)                                                         :: ans

    ! Declare internal variables ...
    INTEGER(kind = INT64)                                                       :: i_x
    INTEGER(kind = INT64)                                                       :: i_y
    INTEGER(kind = INT64)                                                       :: n_x
    INTEGER(kind = INT64)                                                       :: n_y

    ! Find size of input arrays ...
    n_x = SIZE(x, kind = INT64)
    n_y = SIZE(y, kind = INT64)

    ! Set starting value ...
    ans = 0.0e0_REAL64

    !$omp parallel                                                              &
    !$omp default(none)                                                         &
    !$omp private(i_x)                                                          &
    !$omp private(i_y)                                                          &
    !$omp shared(array)                                                         &
    !$omp shared(n_x)                                                           &
    !$omp shared(n_y)                                                           &
    !$omp shared(x)                                                             &
    !$omp shared(y)                                                             &
    !$omp reduction(+:ans)
        !$omp do &
        !$omp schedule(dynamic)
            ! Loop over x ...
            DO i_x = 1_INT64, n_x - 1_INT64
                ! Loop over y ...
                DO i_y = 1_INT64, n_y - 1_INT64
                    ! Integrate via the trapezium rule ...
                    ans = ans + (x(i_x + 1_INT64) - x(i_x)) * (y(i_y + 1_INT64) - y(i_y)) * 0.25e0_REAL64 * (array(i_x, i_y) + array(i_x + 1_INT64, i_y) + array(i_x, i_y + 1_INT64) + array(i_x + 1_INT64, i_y + 1_INT64))
                END DO
            END DO
        !$omp end do
    !$omp end parallel
END FUNCTION func_integrate_2D_REAL64_real_array
