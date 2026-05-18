SUBROUTINE sub_linearRegression(                                                &
    n,                                                                          &
    x,                                                                          &
    y,                                                                          &
    m,                                                                          &
    c,                                                                          &
    debug                                                                       &
)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: n
    REAL(kind = REAL64), DIMENSION(n), INTENT(in)                               :: x
    REAL(kind = REAL64), DIMENSION(n), INTENT(in)                               :: y
    REAL(kind = REAL64), INTENT(out)                                            :: m
    REAL(kind = REAL64), INTENT(out)                                            :: c

    ! Declare optional input variables/outputs ...
    LOGICAL(kind = INT8), INTENT(in), OPTIONAL                                  :: debug

    ! Declare internal variables ...
    LOGICAL(kind = INT8)                                                        :: debug2
    INTEGER(kind = INT64)                                                       :: i
    REAL(kind = REAL64)                                                         :: xbar
    REAL(kind = REAL64)                                                         :: ybar
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: bot
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: top

    ! Set logical values ...
    IF(PRESENT(debug))THEN
        debug2 = debug
    ELSE
        debug2 = .TRUE._INT8
    END IF

    ! **************************************************************************

    ! Create short-hands ...
    xbar = func_mean(n, x)
    ybar = func_mean(n, y)

    ! Allocate arrays ...
    CALL sub_allocate_array(top, "top", n, debug2)
    CALL sub_allocate_array(bot, "bot", n, debug2)

    ! Calculate parts of fraction ...
    DO i = 1_INT64, n
        top(i) = (x(i) - xbar) * y(i)
        bot(i) = (x(i) - xbar) ** 2
    END DO

    ! Calculate linear regression parameters ...
    m = SUM(top) / SUM(bot)
    c = ybar - m * xbar

    ! Clean up ...
    DEALLOCATE(bot)
    DEALLOCATE(top)
END SUBROUTINE sub_linearRegression
