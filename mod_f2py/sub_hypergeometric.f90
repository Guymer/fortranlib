PURE SUBROUTINE sub_hypergeometric(a, b, c, z, ans)
    !f2py threadsafe

    ! Import standard modules ...
    USE ISO_C_BINDING

    ! Import my modules ...
    USE mod_safe, ONLY: func_hypergeometric

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    REAL(kind = C_DOUBLE), INTENT(in)                                           :: a
    REAL(kind = C_DOUBLE), INTENT(in)                                           :: b
    REAL(kind = C_DOUBLE), INTENT(in)                                           :: c
    REAL(kind = C_DOUBLE), INTENT(in)                                           :: z
    REAL(kind = C_DOUBLE), INTENT(out)                                          :: ans

    ! Calculate answer ...
    ans = func_hypergeometric(a, b, c, z)
END SUBROUTINE sub_hypergeometric
