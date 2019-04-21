!> @brief This function returns the integral of the supplied 2D tabulated data.
!>
!> @param[in] x1 The first variable of integration.
!>
!> @param[in] x2 The second variable of integration.
!>
!> @param[in] array The integrand.
!>
!> @note "x1" and "x2" do not have to be uniform.
!>
!> @warning "x1" must be the same as the first dimension of "array".
!>
!> @warning "x2" must be the same as the second dimension of "array".
!>
FUNCTION func_integrate_2D_REAL64_real_array(x1, x2, array) RESULT(ans)
    USE ISO_FORTRAN_ENV
    USE OMP_LIB

    IMPLICIT NONE

    ! Declare input variables ...
    REAL(kind = REAL64), DIMENSION(:), INTENT(in)                               :: x1
    REAL(kind = REAL64), DIMENSION(:), INTENT(in)                               :: x2
    REAL(kind = REAL64), DIMENSION(:, :), INTENT(in)                            :: array

    ! Declare output variables ...
    REAL(kind = REAL64)                                                         :: ans

    ! Declare internal variables ...
    INTEGER(kind = INT64)                                                       :: i1
    INTEGER(kind = INT64)                                                       :: i2
    INTEGER(kind = INT64)                                                       :: n1
    INTEGER(kind = INT64)                                                       :: n2

    ! Find size of input arrays ...
    n1 = SIZE(x1, kind = INT64)
    n2 = SIZE(x2, kind = INT64)

    ! Set starting value ...
    ans = 0.0e0_REAL64

    !$omp parallel                                                              &
    !$omp default(none)                                                         &
    !$omp private(i1)                                                           &
    !$omp private(i2)                                                           &
    !$omp shared(array)                                                         &
    !$omp shared(n1)                                                            &
    !$omp shared(n2)                                                            &
    !$omp shared(x1)                                                            &
    !$omp shared(x2)                                                            &
    !$omp reduction(+:ans)
        !$omp do &
        !$omp schedule(dynamic)
            ! Loop over x ...
            DO i1 = 1_INT64, n1 - 1_INT64
                ! Loop over y ...
                DO i2 = 1_INT64, n2 - 1_INT64
                    ! Integrate via the trapezium rule ...
                    ans = ans + (x1(i1 + 1_INT64) - x1(i1)) * (x2(i2 + 1_INT64) - x2(i2)) * 0.25e0_REAL64 * (array(i1, i2) + array(i1 + 1_INT64, i2) + array(i1, i2 + 1_INT64) + array(i1 + 1_INT64, i2 + 1_INT64))
                END DO
            END DO
        !$omp end do
    !$omp end parallel
END FUNCTION func_integrate_2D_REAL64_real_array
