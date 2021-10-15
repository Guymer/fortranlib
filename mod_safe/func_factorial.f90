RECURSIVE FUNCTION func_factorial(x) result(ans)
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT64)                                                       :: ans
    INTEGER(kind = INT64), INTENT(in)                                           :: x

    ! Check if it is a special case ...
    IF(x == 0_INT64)THEN
        ! Set value ...
        ans = 1_INT64
    ELSE
        ! Set value ...
        ans = x * func_factorial(x - 1_INT64)
    END IF
END FUNCTION func_factorial
