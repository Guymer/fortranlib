!> @brief This subroutine creates a copy of the input 2D REAL64 real array with a border.
!>
!> @param[in] arr The input 2D REAL64 real array
!>
!> @param[out] borderedArr The output 2D REAL64 real array
!>
!> @param[in] name The name of the output array
!>
!> @param[in] n1 The size of the 1-th dimension of the input array
!>
!> @param[in] n2 The size of the 2-th dimension of the input array
!>
!> @param[in] debug Verbosity flag
!>

SUBROUTINE sub_border_2D_REAL64_real_array(n1, n2, arr, borderedArr, name, debug)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    CHARACTER(len = *), INTENT(in)                                              :: name
    LOGICAL(kind = INT8), INTENT(in)                                            :: debug
    INTEGER(kind = INT64), INTENT(in)                                           :: n1
    INTEGER(kind = INT64), INTENT(in)                                           :: n2
    REAL(kind = REAL64), DIMENSION(1:n1, 1:n2), INTENT(in)                      :: arr
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:, :), INTENT(out)              :: borderedArr

    ! Declare variables ...
    CHARACTER(len = 3)                                                          :: units
    INTEGER(kind = INT64)                                                       :: i1
    INTEGER(kind = INT64)                                                       :: i2
    REAL(kind = REAL64)                                                         :: tmp

    ! Declare FORTRAN variables ...
    CHARACTER(len = 256)                                                        :: errmsg
    INTEGER(kind = INT32)                                                       :: errnum

    ! Check that a message needs printing ...
    IF(debug)THEN
        ! Calculate size ...
        tmp = REAL((n1 + 2_INT64) * (n2 + 2_INT64) * STORAGE_SIZE(borderedArr, kind = INT64) / 8_INT64, kind = REAL64) / 1024.0e0_REAL64
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
    ALLOCATE(borderedArr(0_INT64:n1 + 1_INT64, 0_INT64:n2 + 1_INT64), stat = errnum, errmsg = errmsg)
    IF(errnum /= 0_INT32)THEN
        WRITE(fmt = '("ERROR: Failed to ALLOCATE() """, a, """. ERRMSG = ", a, ". ERRNUM = ", i3, ".")', unit = ERROR_UNIT) name, TRIM(errmsg), errnum
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF

    ! Fill array ...
    borderedArr = 0.0e0_REAL64
    DO i1 = 1_INT64, n1
        DO i2 = 1_INT64, n2
            borderedArr(i1, i2) = arr(i1, i2)
        END DO
    END DO
END SUBROUTINE sub_border_2D_REAL64_real_array
