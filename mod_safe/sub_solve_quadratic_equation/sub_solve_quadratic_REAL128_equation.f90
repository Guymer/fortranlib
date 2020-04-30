!> @brief This subroutine solves a REAL128 quadratic equation of the form "ax2 + bx + c = 0".
!>
!> @param[in] a The first coefficient
!>
!> @param[in] b The second coefficient
!>
!> @param[in] c The third coefficient
!>
!> @param[out] x1 The first solution
!>
!> @param[out] x2 The second solution
!>
!> @note For a concise explanation see https://people.csail.mit.edu/bkph/articles/Quadratics.pdf by B.K.P. Horn (see https://people.csail.mit.edu/bkph/).
!>

PURE SUBROUTINE sub_solve_quadratic_REAL128_equation(a, b, c, x1, x2)
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    REAL(kind = REAL128), INTENT(in)                                            :: a
    REAL(kind = REAL128), INTENT(in)                                            :: b
    REAL(kind = REAL128), INTENT(in)                                            :: c
    REAL(kind = REAL128), INTENT(out)                                           :: x1
    REAL(kind = REAL128), INTENT(out)                                           :: x2

    ! Check sign of b ...
    IF(b >= 0.0e0_REAL128)THEN
        x1 = (-b - SQRT(b ** 2 - 4.0e0_REAL128 * a * c)) / (2.0e0_REAL128 * a)
        x2 = (2.0e0_REAL128 * c) / (-b - SQRT(b ** 2 - 4.0e0_REAL128 * a * c))
    ELSE
        x1 = (2.0e0_REAL128 * c) / (-b + SQRT(b ** 2 - 4.0e0_REAL128 * a * c))
        x2 = (-b + SQRT(b ** 2 - 4.0e0_REAL128 * a * c)) / (2.0e0_REAL128 * a)
    END IF
END SUBROUTINE sub_solve_quadratic_REAL128_equation
