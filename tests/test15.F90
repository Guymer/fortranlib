! Declare program ...
PROGRAM test15
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    ! Import my modules ...
    USE mod_safe, ONLY:                 func_hypergeometric,                    &
                                        func_mean,                              &
                                        func_rising_factorial,                  &
                                        func_stddev,                            &
                                        func_stderr,                            &
                                        func_t_CDF,                             &
                                        func_t_PDF,                             &
                                        func_var,                               &
                                        sub_allocate_array,                     &
                                        sub_ttest_ind

    IMPLICIT NONE

    ! Declare variables ...
    REAL(kind = REAL64)                                                         :: p
    REAL(kind = REAL64)                                                         :: t
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: arr1
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: arr2

    ! **************************************************************************

    ! Calculate and print summary ...
    ! NOTE: https://docs.scipy.org/doc/scipy/reference/generated/scipy.special.poch.html
    ! NOTE: python3.12 -c "import scipy; import scipy.special; print(scipy.special.poch(2.0, 0.0));"
    ! NOTE: python3.12 -c "import scipy; import scipy.special; print(scipy.special.poch(1.0, 5.0));"
    ! NOTE: python3.12 -c "import scipy; import scipy.special; print(scipy.special.poch(3.7, 2.1));"
    WRITE(fmt = '("How does Python compare to FORTRAN? (func_rising_factorial)")', unit = OUTPUT_UNIT)
    WRITE(fmt = '("     Python = ", f14.9, "; ", f14.9, "; ", f14.9)', unit = OUTPUT_UNIT) 1.0e0_REAL64, 120.0e0_REAL64, 20.529581933776953e0_REAL64
    WRITE(fmt = '("    FORTRAN = ", f14.9, "; ", f14.9, "; ", f14.9)', unit = OUTPUT_UNIT) func_rising_factorial(2.0e0_REAL64, 0.0e0_REAL64), func_rising_factorial(1.0e0_REAL64, 5.0e0_REAL64), func_rising_factorial(3.7e0_REAL64, 2.1e0_REAL64)
    FLUSH(unit = OUTPUT_UNIT)

    ! **************************************************************************

    ! Calculate and print summary ...
    ! NOTE: https://docs.scipy.org/doc/scipy/reference/generated/scipy.special.hyp2f1.html
    ! NOTE: python3.12 -c "import scipy; import scipy.special; print(scipy.special.hyp2f1(1.0, 1.0, 2.0, +0.5 ));"
    ! NOTE: python3.12 -c "import scipy; import scipy.special; print(scipy.special.hyp2f1(0.5, 1.0, 1.5, +0.25));"
    ! NOTE: python3.12 -c "import scipy; import scipy.special; print(scipy.special.hyp2f1(0.5, 1.0, 1.5, -0.25));"
    ! NOTE: python3.12 -c "import scipy; import scipy.special; print(scipy.special.hyp2f1(0.5, 1.5, 1.5, -2.0 ));"
    WRITE(fmt = '("How does Python compare to FORTRAN? (func_hypergeometric)")', unit = OUTPUT_UNIT)
    WRITE(fmt = '("     Python = ", f14.9, "; ", f14.9, "; ", f14.9, "; ", f14.9)', unit = OUTPUT_UNIT) 1.3862943611198901e0_REAL64, 1.098612288668109e0_REAL64, 0.9272952180016117e0_REAL64, 0.5773502691896257e0_REAL64
    WRITE(fmt = '("    FORTRAN = ", f14.9, "; ", f14.9, "; ", f14.9, "; ", f14.9)', unit = OUTPUT_UNIT) func_hypergeometric(1.0e0_REAL64, 1.0e0_REAL64, 2.0e0_REAL64, +0.5e0_REAL64), func_hypergeometric(0.5e0_REAL64, 1.0e0_REAL64, 1.5e0_REAL64, +0.25e0_REAL64), func_hypergeometric(0.5e0_REAL64, 1.0e0_REAL64, 1.5e0_REAL64, -0.25e0_REAL64), func_hypergeometric(0.5e0_REAL64, 1.5e0_REAL64, 1.5e0_REAL64, -2.0e0_REAL64)
    FLUSH(unit = OUTPUT_UNIT)

    ! **************************************************************************

    ! Calculate and print summary ...
    ! NOTE: https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.t.html
    ! NOTE: python3.12 -c "import scipy; import scipy.stats; print(scipy.stats.t.pdf( 0.0, 2.0));"
    ! NOTE: python3.12 -c "import scipy; import scipy.stats; print(scipy.stats.t.pdf(-2.0, 2.0));"
    ! NOTE: python3.12 -c "import scipy; import scipy.stats; print(scipy.stats.t.pdf(+2.0, 2.0));"
    ! NOTE: python3.12 -c "import scipy; import scipy.stats; print(scipy.stats.t.pdf(+5.0, 5.0));"
    WRITE(fmt = '("How does Python compare to FORTRAN? (func_t_PDF)")', unit = OUTPUT_UNIT)
    WRITE(fmt = '("     Python = ", f14.9, "; ", f14.9, "; ", f14.9, "; ", f14.9)', unit = OUTPUT_UNIT) 0.3535533905932738e0_REAL64, 0.06804138174397717e0_REAL64, 0.06804138174397717e0_REAL64, 0.0017574383788078445e0_REAL64
    WRITE(fmt = '("    FORTRAN = ", f14.9, "; ", f14.9, "; ", f14.9, "; ", f14.9)', unit = OUTPUT_UNIT) func_t_PDF( 0.0e0_REAL64, 2.0e0_REAL64), func_t_PDF(-2.0e0_REAL64, 2.0e0_REAL64), func_t_PDF(+2.0e0_REAL64, 2.0e0_REAL64), func_t_PDF(+5.0e0_REAL64, 5.0e0_REAL64)
    FLUSH(unit = OUTPUT_UNIT)

    ! **************************************************************************

    ! Calculate and print summary ...
    ! NOTE: https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.t.html
    ! NOTE: python3.12 -c "import scipy; import scipy.stats; print(scipy.stats.t.cdf( 0.0, 2.0));"
    ! NOTE: python3.12 -c "import scipy; import scipy.stats; print(scipy.stats.t.cdf(-2.0, 2.0));"
    ! NOTE: python3.12 -c "import scipy; import scipy.stats; print(scipy.stats.t.cdf(+2.0, 2.0));"
    ! NOTE: python3.12 -c "import scipy; import scipy.stats; print(scipy.stats.t.cdf(+5.0, 5.0));"
    WRITE(fmt = '("How does Python compare to FORTRAN? (func_t_CDF)")', unit = OUTPUT_UNIT)
    WRITE(fmt = '("     Python = ", f14.9, "; ", f14.9, "; ", f14.9, "; ", f14.9)', unit = OUTPUT_UNIT) 0.5e0_REAL64, 0.09175170953613696e0_REAL64, 0.908248290463863e0_REAL64, 0.9979476420099733e0_REAL64
    WRITE(fmt = '("    FORTRAN = ", f14.9, "; ", f14.9, "; ", f14.9, "; ", f14.9)', unit = OUTPUT_UNIT) func_t_CDF( 0.0e0_REAL64, 2.0e0_REAL64), func_t_CDF(-2.0e0_REAL64, 2.0e0_REAL64), func_t_CDF(+2.0e0_REAL64, 2.0e0_REAL64), func_t_CDF(+5.0e0_REAL64, 5.0e0_REAL64)
    FLUSH(unit = OUTPUT_UNIT)

    ! **************************************************************************

    ! NOTE: See https://en.wikipedia.org/wiki/Student's_t-test
    !         * "Worked examples" section
    !       The test statistic is approximately equal to 1.959, which gives a two-tailed p-value of 0.07857.

    ! Allocate and populate array ...
    CALL sub_allocate_array(arr1, "arr1", 6_INT64, .FALSE._INT8)
    arr1(1) = 30.02e0_REAL64
    arr1(2) = 29.99e0_REAL64
    arr1(3) = 30.11e0_REAL64
    arr1(4) = 29.97e0_REAL64
    arr1(5) = 30.01e0_REAL64
    arr1(6) = 29.99e0_REAL64

    ! Allocate and populate array ...
    CALL sub_allocate_array(arr2, "arr2", 6_INT64, .FALSE._INT8)
    arr2(1) = 29.89e0_REAL64
    arr2(2) = 29.93e0_REAL64
    arr2(3) = 29.72e0_REAL64
    arr2(4) = 29.98e0_REAL64
    arr2(5) = 30.02e0_REAL64
    arr2(6) = 29.98e0_REAL64

    ! Print summary ...
    WRITE(fmt = '("mean = ", f5.2, ", var = ", f5.3, ", std-dev = ", f5.3, ", std-err = ", f5.3)', unit = OUTPUT_UNIT) func_mean(arr1), func_var(arr1), func_stddev(arr1), func_stderr(arr1)
    WRITE(fmt = '("mean = ", f5.2, ", var = ", f5.3, ", std-dev = ", f5.3, ", std-err = ", f5.3)', unit = OUTPUT_UNIT) func_mean(arr2), func_var(arr2), func_stddev(arr2), func_stderr(arr2)
    FLUSH(unit = OUTPUT_UNIT)

    ! Calculate the probability that both sets are sampled from Normal
    ! distributions with the same mean and similar variances ...
    CALL sub_ttest_ind(arr1, arr2, .TRUE._INT8, t, p)
    WRITE(fmt = '("TRUE : t = ", f5.3, ", p = ", f7.5)', unit = OUTPUT_UNIT) t, p
    FLUSH(unit = OUTPUT_UNIT)

    ! Calculate the probability that both sets are sampled from Normal
    ! distributions with the same mean and dissimilar variances ...
    CALL sub_ttest_ind(arr1, arr2, .FALSE._INT8, t, p)
    WRITE(fmt = '("FALSE: t = ", f5.3, ", p = ", f7.5)', unit = OUTPUT_UNIT) t, p
    FLUSH(unit = OUTPUT_UNIT)

    ! Clean up ...
    DEALLOCATE(arr1)
    DEALLOCATE(arr2)
END PROGRAM test15
