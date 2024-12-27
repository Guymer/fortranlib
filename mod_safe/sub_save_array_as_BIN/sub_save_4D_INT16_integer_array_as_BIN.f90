!> @brief This subroutine saves a 4D INT16 integer array to a BIN file.
!>
!> @param[in] arr The 4D INT16 integer array to be saved to a BIN file
!>
!> @param[in] fname The name of the BIN file
!>

SUBROUTINE sub_save_4D_INT16_integer_array_as_BIN(arr, fname)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    CHARACTER(len = *), INTENT(in)                                              :: fname
    INTEGER(kind = INT16), DIMENSION(:, :, :, :), INTENT(in)                    :: arr

    ! Declare FORTRAN variables ...
    CHARACTER(len = 256)                                                        :: errmsg
    INTEGER(kind = INT32)                                                       :: errnum
    INTEGER(kind = INT32)                                                       :: funit

    ! Open BIN ...
    OPEN(                                                                       &
         access = "stream",                                                     &
         action = "write",                                                      &
           file = TRIM(fname),                                                  &
           form = "unformatted",                                                &
          iomsg = errmsg,                                                       &
         iostat = errnum,                                                       &
        newunit = funit,                                                        &
         status = "replace"                                                     &
    )
    IF(errnum /= 0_INT32)THEN
        WRITE(fmt = '("ERROR: ", a, ". ERRMSG = ", a, ". ERRNUM = ", i3, ".")', unit = ERROR_UNIT) "Failed to open BIN", TRIM(errmsg), errnum
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF

    ! Write out array ...
    WRITE(unit = funit) arr

    ! Close BIN ...
    CLOSE(unit = funit)
END SUBROUTINE sub_save_4D_INT16_integer_array_as_BIN
