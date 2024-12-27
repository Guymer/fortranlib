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

PURE FUNCTION func_integrate_1D_REAL64_real_array(x1, arr) RESULT(ans)
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables ...
    REAL(kind = REAL64), DIMENSION(:), INTENT(in)                               :: x1
    REAL(kind = REAL64), DIMENSION(:), INTENT(in)                               :: arr

    ! Declare output variables ...
    REAL(kind = REAL64)                                                         :: ans

    ! Declare internal variables ...
    INTEGER(kind = INT64)                                                       :: i1
    INTEGER(kind = INT64)                                                       :: n1

    ! Find size of input array ...
    n1 = SIZE(x1, kind = INT64)

    ! TODO: In future, think about:
    !         * Is it quicker to calculate a "dx" vector and a "midy" vector and
    !           then just take the "DOT_PRODUCT()" of them?
    !         * Is it quicker to use OpenMP and perform a reduction?

    ! Set starting value ...
    ans = 0.0e0_REAL64

    ! Loop over x ...
    DO i1 = 1_INT64, n1 - 1_INT64
        ! Integrate via the trapezium rule ...
        ans = ans + (x1(i1 + 1_INT64) - x1(i1)) * 0.5e0_REAL64 * (arr(i1) + arr(i1 + 1_INT64))
    END DO
END FUNCTION func_integrate_1D_REAL64_real_array
