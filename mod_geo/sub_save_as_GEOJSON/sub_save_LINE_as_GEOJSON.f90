SUBROUTINE sub_save_LINE_as_GEOJSON(line, fname)
    ! NOTE: See https://en.wikipedia.org/wiki/GeoJSON#Geometries

    ! Import standard modules ...
    USE, INTRINSIC :: ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    TYPE(aLine), INTENT(IN)                                                     :: line
    CHARACTER(len = *), INTENT(IN)                                              :: fname

    ! Declare internal variables ...
    INTEGER(kind = INT32)                                                       :: ipoints

    ! Declare FORTRAN variables ...
    CHARACTER(len = 256)                                                        :: errmsg
    INTEGER(kind = INT32)                                                       :: errnum
    INTEGER(kind = INT32)                                                       :: funit

    ! Open GEOJSON ...
    OPEN(                                                                       &
         action = "write",                                                      &
           file = TRIM(fname),                                                  &
           form = "formatted",                                                  &
          iomsg = errmsg,                                                       &
         iostat = errnum,                                                       &
        newunit = funit,                                                        &
         status = "replace"                                                     &
    )
    IF(errnum /= 0_INT32)THEN
        WRITE(FMT = '("ERROR: ", a, ". ERRMSG = ", a, ". ERRNUM = ", i3, ".")', UNIT = ERROR_UNIT) "Failed to open GEOJSON", TRIM(errmsg), errnum
        FLUSH(UNIT = ERROR_UNIT)
        STOP
    END IF

    ! Write out header ...
    WRITE(FMT = "(a)", UNIT = funit) "{"
    WRITE(FMT = "(a)", UNIT = funit) "    ""type"" : ""LineString"","
    WRITE(FMT = "(a)", UNIT = funit) "    ""coordinates"" : ["

    ! Write out line ...
    DO ipoints = 1_INT32, line%npoints - 1_INT32
        WRITE(FMT = '("        [", f14.9, ", ", f13.9, "],")', UNIT = funit) line%x(ipoints), line%y(ipoints)
    END DO
    WRITE(FMT = '("        [", f14.9, ", ", f13.9, "]")', UNIT = funit) line%x(line%npoints), line%y(line%npoints)

    ! Write out footer ...
    WRITE(FMT = "(a)", UNIT = funit) "    ]"
    WRITE(FMT = "(a)", UNIT = funit) "}"

    ! Close GEOJSON ...
    CLOSE(UNIT = funit)
END SUBROUTINE sub_save_LINE_as_GEOJSON
