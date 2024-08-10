PURE SUBROUTINE sub_t_PDF(x, dof, ans)
    !f2py threadsafe

    ! Import standard modules ...
    USE ISO_C_BINDING

    ! Import my modules ...
    USE mod_safe, ONLY: func_t_PDF

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    REAL(kind = C_DOUBLE), INTENT(in)                                           :: x
    REAL(kind = C_DOUBLE), INTENT(in)                                           :: dof
    REAL(kind = C_DOUBLE), INTENT(out)                                          :: ans

    ! Calculate answer ...
    ans = func_t_PDF(x, dof)
END SUBROUTINE sub_t_PDF
