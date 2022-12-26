SUBROUTINE sub_save_LINE_as_GEOJSON(line, fname)
    ! NOTE: See https://en.wikipedia.org/wiki/GeoJSON#Geometries

    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    TYPE(aLine), INTENT(in)                                                     :: line
    CHARACTER(len = *), INTENT(in)                                              :: fname

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
        WRITE(fmt = '("ERROR: ", a, ". ERRMSG = ", a, ". ERRNUM = ", i3, ".")', unit = ERROR_UNIT) "Failed to open GEOJSON", TRIM(errmsg), errnum
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF

    ! Write out header ...
    WRITE(fmt = '(a)', unit = funit) "{"
    WRITE(fmt = '(a)', unit = funit) "    ""type"" : ""LineString"","
    WRITE(fmt = '(a)', unit = funit) "    ""coordinates"" : ["

    ! Write out line ...
    DO ipoints = 1_INT32, line%npoints - 1_INT32
        WRITE(fmt = '("        [", f14.9, ", ", f13.9, "],")', unit = funit) line%x(ipoints), line%y(ipoints)
    END DO
    WRITE(fmt = '("        [", f14.9, ", ", f13.9, "]")', unit = funit) line%x(line%npoints), line%y(line%npoints)

    ! Write out footer ...
    WRITE(fmt = '(a)', unit = funit) "    ]"
    WRITE(fmt = '(a)', unit = funit) "}"

    ! Close GEOJSON ...
    CLOSE(unit = funit)
END SUBROUTINE sub_save_LINE_as_GEOJSON
