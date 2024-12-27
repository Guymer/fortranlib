!> @brief This subroutine loads a 2D REAL64 real array from a BIN file.
!>
!> @param[out] arr The 2D REAL64 real array to be loaded from a BIN file
!>
!> @param[in] fname The name of the BIN file
!>

SUBROUTINE sub_load_2D_REAL64_real_array_from_BIN(arr, fname)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    CHARACTER(len = *), INTENT(in)                                              :: fname
    REAL(kind = REAL64), DIMENSION(:, :), INTENT(out)                           :: arr

    ! Declare FORTRAN variables ...
    CHARACTER(len = 256)                                                        :: errmsg
    INTEGER(kind = INT32)                                                       :: errnum
    INTEGER(kind = INT32)                                                       :: funit

    ! Open BIN ...
    OPEN(                                                                       &
         access = "stream",                                                     &
         action = "read",                                                       &
           file = TRIM(fname),                                                  &
           form = "unformatted",                                                &
          iomsg = errmsg,                                                       &
         iostat = errnum,                                                       &
        newunit = funit,                                                        &
         status = "old"                                                         &
    )
    IF(errnum /= 0_INT32)THEN
        WRITE(fmt = '("ERROR: ", a, ". ERRMSG = ", a, ". ERRNUM = ", i3, ".")', unit = ERROR_UNIT) "Failed to open BIN", TRIM(errmsg), errnum
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF

    ! Read in array ...
    READ(unit = funit) arr

    ! Close BIN ...
    CLOSE(unit = funit)
END SUBROUTINE sub_load_2D_REAL64_real_array_from_BIN
