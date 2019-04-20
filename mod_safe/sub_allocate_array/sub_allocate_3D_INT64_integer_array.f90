!> @brief This subroutine allocates a 3D INT64 integer array.
!>
!> @param[inout] arr The 3D INT64 integer array to be allocated
!>
!> @param[in] name The name of the array
!>
!> @param[in] n1 The size of the 1-th dimension of the array
!>
!> @param[in] n2 The size of the 2-th dimension of the array
!>
!> @param[in] n3 The size of the 3-th dimension of the array
!>
!> @param[in] debug Verbosity flag
!>

SUBROUTINE sub_allocate_3D_INT64_integer_array(arr, name, n1, n2, n3, debug)
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    CHARACTER(len = *), INTENT(in)                                              :: name
    LOGICAL(kind = INT8), INTENT(in)                                            :: debug
    INTEGER(kind = INT64), INTENT(in)                                           :: n1
    INTEGER(kind = INT64), INTENT(in)                                           :: n2
    INTEGER(kind = INT64), INTENT(in)                                           :: n3
    INTEGER(kind = INT64), ALLOCATABLE, DIMENSION(:, :, :), INTENT(inout)       :: arr

    ! Declare variables ...
    CHARACTER(len = 3)                                                          :: units
    REAL(kind = REAL64)                                                         :: tmp

    ! Declare FORTRAN variables ...
    CHARACTER(len = 256)                                                        :: errmsg
    INTEGER(kind = INT32)                                                       :: errnum

    ! Check inputs ...
    IF(n1 <= 0_INT64)THEN
        WRITE(fmt = '("ERROR: The size of the 1-th dimension of """, a, """ is not positive.")', unit = ERROR_UNIT) name
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF
    IF(n2 <= 0_INT64)THEN
        WRITE(fmt = '("ERROR: The size of the 2-th dimension of """, a, """ is not positive.")', unit = ERROR_UNIT) name
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF
    IF(n3 <= 0_INT64)THEN
        WRITE(fmt = '("ERROR: The size of the 3-th dimension of """, a, """ is not positive.")', unit = ERROR_UNIT) name
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF

    ! Check that a message needs printing ...
    IF(debug)THEN
        ! Calculate size ...
        tmp = REAL(n1 * n2 * n3 * STORAGE_SIZE(arr, kind = INT64) / 8_INT64, kind = REAL64) / 1024.0e0_REAL64
        units = "KiB"
        IF(tmp >= 1024.0e0_REAL64)THEN
            tmp = tmp / 1024.0e0_REAL64
            units = "MiB"
        END IF
        IF(tmp >= 1024.0e0_REAL64)THEN
            tmp = tmp / 1024.0e0_REAL64
            units = "GiB"
        END IF
        IF(tmp >= 1024.0e0_REAL64)THEN
            tmp = tmp / 1024.0e0_REAL64
            units = "TiB"
        END IF

        ! Print summary ...
        WRITE(fmt = '("INFO: Attempting to ALLOCATE() ", f7.2, " ", a, " for """, a, """.")', unit = OUTPUT_UNIT) tmp, units, name
        FLUSH(unit = OUTPUT_UNIT)
    END IF

    ! Allocate array ...
    ALLOCATE(arr(n1, n2, n3), stat = errnum, errmsg = errmsg)
    IF(errnum /= 0_INT32)THEN
        WRITE(fmt = '("ERROR: Failed to ALLOCATE() """, a, """. ERRMSG = ", a, ". ERRNUM = ", i3, ".")', unit = ERROR_UNIT) name, TRIM(errmsg), errnum
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF
END SUBROUTINE sub_allocate_3D_INT64_integer_array
