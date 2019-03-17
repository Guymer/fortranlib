!> @brief This subroutine loads a 4D INT8 logical array from a BIN file.
!>
!> @param[out] arr The 4D INT8 logical array to be loaded from a BIN file
!>
!> @param[in] fname The name of the BIN file
!>

SUBROUTINE sub_load_4D_INT8_logical_array_from_BIN(arr, fname)
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    CHARACTER(len = *), INTENT(in)                                              :: fname
    LOGICAL(kind = INT8), DIMENSION(:, :, :, :), INTENT(out)                    :: arr

    ! Declare FORTRAN variables ...
    CHARACTER(len = 256)                                                        :: errmsg
    INTEGER(kind = INT32)                                                       :: errnum
    INTEGER(kind = INT32)                                                       :: funit

    ! Open BIN ...
    OPEN(access = "stream", action = "read", file = TRIM(fname), form = "unformatted", iomsg = errmsg, iostat = errnum, newunit = funit, status = "old")
    IF(errnum /= 0_INT32)THEN
        WRITE(fmt = '("ERROR: ", a, ". ERRMSG = ", a, ". ERRNUM = ", i3, ".")', unit = ERROR_UNIT) "Failed to open BIN", TRIM(errmsg), errnum
        FLUSH(unit = funit)
        STOP
    END IF

    ! Read in array ...
    READ(unit = funit) arr

    ! Close BIN ...
    CLOSE(unit = funit)
END SUBROUTINE sub_load_4D_INT8_logical_array_from_BIN
