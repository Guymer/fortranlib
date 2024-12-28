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

FUNCTION func_integrate_2D_REAL64_real_array(n1, n2, x1, x2, arr) RESULT(ans)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables ...
    INTEGER(kind = INT64), INTENT(in)                                           :: n1
    INTEGER(kind = INT64), INTENT(in)                                           :: n2
    REAL(kind = REAL64), DIMENSION(n1), INTENT(in)                              :: x1
    REAL(kind = REAL64), DIMENSION(n2), INTENT(in)                              :: x2
    REAL(kind = REAL64), DIMENSION(n1, n2), INTENT(in)                          :: arr

    ! Declare output variables ...
    REAL(kind = REAL64)                                                         :: ans

    ! Declare internal variables ...
    INTEGER(kind = INT64)                                                       :: i1
    INTEGER(kind = INT64)                                                       :: i2

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
    ans = 0.0e0_REAL64

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
        ans = 0.0e0_REAL64

        !$omp do                                                                &
        !$omp schedule(dynamic)
            ! Loop over x ...
            DO i1 = 1_INT64, n1 - 1_INT64
                ! Loop over y ...
                DO i2 = 1_INT64, n2 - 1_INT64
                    ! Integrate via the trapezium rule ...
                    ans = ans + (x1(i1 + 1_INT64) - x1(i1)) * (x2(i2 + 1_INT64) - x2(i2)) * 0.25e0_REAL64 * (arr(i1, i2) + arr(i1 + 1_INT64, i2) + arr(i1, i2 + 1_INT64) + arr(i1 + 1_INT64, i2 + 1_INT64))
                END DO
            END DO
        !$omp end do
    !$omp end parallel
END FUNCTION func_integrate_2D_REAL64_real_array
