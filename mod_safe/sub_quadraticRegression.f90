SUBROUTINE sub_quadraticRegression(n, x, y, a, b, c, debug)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: n
    REAL(kind = REAL64), DIMENSION(n), INTENT(in)                               :: x
    REAL(kind = REAL64), DIMENSION(n), INTENT(in)                               :: y
    REAL(kind = REAL64), INTENT(out)                                            :: a
    REAL(kind = REAL64), INTENT(out)                                            :: b
    REAL(kind = REAL64), INTENT(out)                                            :: c

    ! Declare optional input variables/outputs ...
    LOGICAL(kind = INT8), INTENT(in), OPTIONAL                                  :: debug

    ! Declare internal variables ...
    LOGICAL(kind = INT8)                                                        :: debug2
    INTEGER(kind = INT64)                                                       :: i
    REAL(kind = REAL64)                                                         :: linC
    REAL(kind = REAL64)                                                         :: linM
    REAL(kind = REAL64)                                                         :: xbar
    REAL(kind = REAL64)                                                         :: x2bar
    REAL(kind = REAL64)                                                         :: ybar
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: dydx
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: midx

    ! Set logical values ...
    IF(PRESENT(debug))THEN
        debug2 = debug
    ELSE
        debug2 = .TRUE._INT8
    END IF

    ! **************************************************************************

    ! Check inputs ...
    DO i = 1_INT64, n - 1_INT64
        IF(x(i + 1_INT64) <= x(i))THEN
            WRITE(                                                              &
                 fmt = '("ERROR: ""x"" is not sorted.")',                       &
                unit = ERROR_UNIT                                               &
            )
            FLUSH(unit = ERROR_UNIT)
            STOP
        END IF
    END DO

    ! Allocate arrays ...
    CALL sub_allocate_array(dydx, "dydx", n - 1_INT64, debug2)
    CALL sub_allocate_array(midx, "midx", n - 1_INT64, debug2)

    ! Calculate gradients and mid-points ...
    DO i = 1_INT64, n - 1_INT64
        dydx(i) = (y(i + 1_INT64) - y(i)) / (x(i + 1_INT64) - x(i))
        midx(i) = 0.5e0_REAL64 * (x(i) + x(i + 1_INT64))
    END DO

    ! Calculate linear regression parameters and set (two out of three) answers ...
    CALL sub_linearRegression(                                                  &
            n = n - 1_INT64,                                                    &
            x = midx,                                                           &
            y = dydx,                                                           &
            m = linM,                                                           &
            c = linC,                                                           &
        debug = debug2                                                          &
    )
    a = 0.5e0_REAL64 * linM
    b = linC

    ! Clean up ...
    DEALLOCATE(dydx)
    DEALLOCATE(midx)

    ! Create short-hands ...
    xbar = func_mean(n, x)
    x2bar = func_mean(n, x ** 2)
    ybar = func_mean(n, y)

    ! Set (final) answer ...
    c = ybar - a * x2bar - b * xbar
END SUBROUTINE sub_quadraticRegression
