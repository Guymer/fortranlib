!> @brief This subroutine saves a 7D REAL32 real array to a BIN file.
!>
!> @param[in] arr The 7D REAL32 real array to be saved to a BIN file
!>
!> @param[in] fname The name of the BIN file
!>

SUBROUTINE sub_save_7D_REAL32_real_array_as_BIN(arr, fname)
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    CHARACTER(len = *), INTENT(in)                                              :: fname
    REAL(kind = REAL32), DIMENSION(:, :, :, :, :, :, :), INTENT(in)             :: arr

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
END SUBROUTINE sub_save_7D_REAL32_real_array_as_BIN
