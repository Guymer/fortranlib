PROGRAM main
    ! Import modules ...
    USE ISO_FORTRAN_ENV
    USE mod_safe, ONLY: func_mean, func_stddev, func_stderr, func_ttest_pdf, func_var, sub_allocate_array, sub_ttest_ind

    IMPLICIT NONE

    ! Declare variables ...
    INTEGER(kind = REAL64)                                                      :: n1
    INTEGER(kind = REAL64)                                                      :: n2
    REAL(kind = REAL64)                                                         :: p
    REAL(kind = REAL64)                                                         :: t
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: arr1
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: arr2

    ! Calculate and print summary ...
    ! NOTE: python3.9 -c "import scipy; import scipy.stats; print(scipy.stats.t.pdf( 0.0, 2.0));"
    ! NOTE: python3.9 -c "import scipy; import scipy.stats; print(scipy.stats.t.pdf(-2.0, 2.0));"
    ! NOTE: python3.9 -c "import scipy; import scipy.stats; print(scipy.stats.t.pdf(+2.0, 2.0));"
    ! NOTE: python3.9 -c "import scipy; import scipy.stats; print(scipy.stats.t.pdf(+5.0, 5.0));"
    WRITE(fmt = '("How does Python compare to FORTRAN?")', unit = OUTPUT_UNIT)
    WRITE(fmt = '("     Python = ", f14.9, "; ", f14.9, "; ", f14.9, "; ", f14.9)', unit = OUTPUT_UNIT) 0.3535533905932738e0_REAL64, 0.06804138174397717e0_REAL64, 0.06804138174397717e0_REAL64, 0.0017574383788078445e0_REAL64
    WRITE(fmt = '("    FORTRAN = ", f14.9, "; ", f14.9, "; ", f14.9, "; ", f14.9)', unit = OUTPUT_UNIT) func_ttest_pdf( 0.0e0_REAL64, 2.0e0_REAL64), func_ttest_pdf(-2.0e0_REAL64, 2.0e0_REAL64), func_ttest_pdf(+2.0e0_REAL64, 2.0e0_REAL64), func_ttest_pdf(+5.0e0_REAL64, 5.0e0_REAL64)
    FLUSH(unit = OUTPUT_UNIT)

    ! Set sizes of arrays ...
    n1 = 50_INT64
    n2 = 25_INT64

    ! Allocate arrays ...
    CALL sub_allocate_array(arr1, "arr1", n1, .FALSE._INT8)
    CALL sub_allocate_array(arr2, "arr2", n2, .FALSE._INT8)

    ! Populate arrays ...
    ! NOTE: Arrays are uniform from 0 to 1.
    CALL RANDOM_NUMBER(arr1)
    CALL RANDOM_NUMBER(arr2)

    ! Print summary ...
    WRITE(fmt = '("mean = ", f5.3, ", var = ", f5.3, ", std-dev = ", f5.3, ", std-err = ", f5.3)', unit = OUTPUT_UNIT) func_mean(arr1), func_var(arr1), func_stddev(arr1), func_stderr(arr1)
    WRITE(fmt = '("mean = ", f5.3, ", var = ", f5.3, ", std-dev = ", f5.3, ", std-err = ", f5.3)', unit = OUTPUT_UNIT) func_mean(arr2), func_var(arr2), func_stddev(arr2), func_stderr(arr2)
    FLUSH(unit = OUTPUT_UNIT)

    ! Calculate the probability that both sets are sampled from Normal
    ! distributions with the same mean and similar variances ...
    CALL sub_ttest_ind(arr1, arr2, .TRUE._INT8, t, p)
    WRITE(fmt = '("TRUE : t = ", f6.3, ", p = ", f5.3)', unit = OUTPUT_UNIT) t, p
    FLUSH(unit = OUTPUT_UNIT)

    ! Calculate the probability that both sets are sampled from Normal
    ! distributions with the same mean and dissimilar variances ...
    CALL sub_ttest_ind(arr1, arr2, .FALSE._INT8, t, p)
    WRITE(fmt = '("FALSE: t = ", f6.3, ", p = ", f5.3)', unit = OUTPUT_UNIT) t, p
    FLUSH(unit = OUTPUT_UNIT)

    ! Clean up ...
    DEALLOCATE(arr1)
    DEALLOCATE(arr2)
END PROGRAM main
