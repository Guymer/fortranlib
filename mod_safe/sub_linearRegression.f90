PURE SUBROUTINE sub_linearRegression(                                           &
    n,                                                                          &
    x,                                                                          &
    y,                                                                          &
    m,                                                                          &
    c                                                                           &
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

    ! Declare internal variables ...
    INTEGER(kind = INT64)                                                       :: i
    REAL(kind = REAL64)                                                         :: xbar
    REAL(kind = REAL64)                                                         :: ybar
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: bot
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: top

    ! **************************************************************************

    ! Create short-hands ...
    xbar = func_mean(n, x)
    ybar = func_mean(n, y)

    ! Allocate arrays ...
    ALLOCATE(top(n))
    ALLOCATE(bot(n))

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
