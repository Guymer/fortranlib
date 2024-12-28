!> @brief This function returns the integral of the supplied 1D tabulated data.
!>
!> @param[in] n1 The size of the variable of integration.
!>
!> @param[in] x1 The variable of integration.
!>
!> @param[in] arr The discrete integrand.
!>
!> @note "x1" does not have to be uniform.
!>
!> @warning "x1" must be the same dimension as "arr".
!>

PURE FUNCTION func_integrate_1D_REAL128_real_array(n1, x1, arr) RESULT(ans)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables ...
    INTEGER(kind = INT64), INTENT(in)                                           :: n1
    REAL(kind = REAL128), DIMENSION(n1), INTENT(in)                             :: x1
    REAL(kind = REAL128), DIMENSION(n1), INTENT(in)                             :: arr

    ! Declare output variables ...
    REAL(kind = REAL128)                                                        :: ans

    ! Declare internal variables ...
    INTEGER(kind = INT64)                                                       :: i1

    ! NOTE: As of 28/Dec/2024, NumPy creates a temporary array and then calls
    !       ".sum()" on it, see:
    !         * https://github.com/numpy/numpy/blob/v2.2.0/numpy/lib/_function_base_impl.py#L5085
    !       The NumPy documentation also states that "the integration happens in
    !       sequence along its elements - they are not sorted", see:
    !         * https://github.com/numpy/numpy/blob/v2.2.0/numpy/lib/_function_base_impl.py#L4964
    !       The NumPy documentation for ".sum()" has a discussion on the
    !       numerical precision of performing a summation, see:
    !         * https://github.com/numpy/numpy/blob/v2.2.0/numpy/_core/fromnumeric.py#L2408
    !       The questions here then become:
    !         * Which is more precise? "ans = ans + val[i]" in a loop or "ans =
    !           SUM(val)" alone?
    !         * Which is easier to understand? "ans = DOT_PRODUCT(dx, midy)" or
    !           "ans = SUM(dx * midy)"?
    !       I would like to think that a modern compiler does something clever
    !       with "SUM()" behind the scenes and that "ans = SUM(val)" alone is
    !       more precise than manually performing "ans = ans + val[i]" in a
    !       loop. However, to create the temporary array to do the summation
    !       then this function would use a lot more RAM. It would use even more
    !       RAM if it made two temporary arrays to do the dot product. We fall
    !       back to the classic three-way split in programming: readability -vs-
    !       CPU time -vs- RAM usage.

    ! Set starting value ...
    ans = 0.0e0_REAL128

    ! Loop over x ...
    DO i1 = 1_INT64, n1 - 1_INT64
        ! Integrate via the trapezium rule ...
        ans = ans + (x1(i1 + 1_INT64) - x1(i1)) * 0.5e0_REAL128 * (arr(i1) + arr(i1 + 1_INT64))
    END DO
END FUNCTION func_integrate_1D_REAL128_real_array
