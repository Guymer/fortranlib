!> @brief This function returns the overall index for any step within 2 nested do loops
!>
!> @param[in] i1 the index of the first do loop
!>
!> @param[in] i2 the index of the second do loop
!>
!> @param[in] n1 the end of the first do loop
!>
!> @param[in] n2 the end of the second do loop
!>
!> @warning This function assumes that all indexes go from 1 to n (inclusive)
!>

ELEMENTAL FUNCTION func_overall_index_2loops(i1, i2, n1, n2) RESULT(ans)
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: i1
    INTEGER(kind = INT64), INTENT(in)                                           :: i2
    INTEGER(kind = INT64), INTENT(in)                                           :: n1
    INTEGER(kind = INT64), INTENT(in)                                           :: n2
    INTEGER(kind = INT64)                                                       :: ans

    ans = i2 + n2 * (i1 - 1_INT64)
END FUNCTION
