!> @brief This function returns the overall index for any step within 6 nested do loops
!>
!> @param[in] i1 the index of the first do loop
!>
!> @param[in] i2 the index of the second do loop
!>
!> @param[in] i3 the index of the third do loop
!>
!> @param[in] i4 the index of the fourth do loop
!>
!> @param[in] i5 the index of the fifth do loop
!>
!> @param[in] i6 the index of the sixth do loop
!>
!> @param[in] n2 the end of the second do loop
!>
!> @param[in] n3 the end of the third do loop
!>
!> @param[in] n4 the end of the fourth do loop
!>
!> @param[in] n5 the end of the fifth do loop
!>
!> @param[in] n6 the end of the sixth do loop
!>
!> @warning This function assumes that all indexes go from 1 to n (inclusive)
!>

ELEMENTAL FUNCTION func_overall_index_6loops(i1, i2, i3, i4, i5, i6, n2, n3, n4, n5, n6) RESULT(ans)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: i1
    INTEGER(kind = INT64), INTENT(in)                                           :: i2
    INTEGER(kind = INT64), INTENT(in)                                           :: i3
    INTEGER(kind = INT64), INTENT(in)                                           :: i4
    INTEGER(kind = INT64), INTENT(in)                                           :: i5
    INTEGER(kind = INT64), INTENT(in)                                           :: i6
    INTEGER(kind = INT64), INTENT(in)                                           :: n2
    INTEGER(kind = INT64), INTENT(in)                                           :: n3
    INTEGER(kind = INT64), INTENT(in)                                           :: n4
    INTEGER(kind = INT64), INTENT(in)                                           :: n5
    INTEGER(kind = INT64), INTENT(in)                                           :: n6
    INTEGER(kind = INT64)                                                       :: ans

    ans = i6 + n6 * ((i5 - 1_INT64) + n5 * ((i4 - 1_INT64) + n4 * ((i3 - 1_INT64) + n3 * ((i2 - 1_INT64) + n2 * (i1 - 1_INT64)))))
END FUNCTION
