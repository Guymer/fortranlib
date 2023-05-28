PROGRAM test14
    ! Import modules ...
    USE ISO_FORTRAN_ENV
    USE mod_safe, ONLY: sub_calc_dist_between_two_locs,                         &
                        sub_calc_loc_from_loc_and_bearing_and_dist

    IMPLICIT NONE

    ! Declare variables ...
    REAL(kind = REAL64)                                                         :: lon1
    REAL(kind = REAL64)                                                         :: lat1
    REAL(kind = REAL64)                                                         :: bear1
    REAL(kind = REAL64)                                                         :: dist
    REAL(kind = REAL64)                                                         :: lon2
    REAL(kind = REAL64)                                                         :: lat2
    REAL(kind = REAL64)                                                         :: bear2

    ! Populate the coefficients ...
    lon1 = 20.0e0_REAL64                                                        ! [°]
    lat1 = 40.0e0_REAL64                                                        ! [°]
    lon2 = 31.0e0_REAL64                                                        ! [°]
    lat2 = 44.0e0_REAL64                                                        ! [°]

    ! Solve and print summary ...
    ! NOTE: python3.11 -c "import pyguymer3; import pyguymer3.geo; print(pyguymer3.geo.calc_dist_between_two_locs(20.0, 40.0, 31.0, 44.0));"
    CALL sub_calc_dist_between_two_locs(lon1, lat1, lon2, lat2, dist, bear1, bear2)
    WRITE(fmt = '("How does Python compare to FORTRAN?")', unit = OUTPUT_UNIT)
    WRITE(fmt = '("     Python = ", f14.6, "; ", f14.9, "; ", f14.9)', unit = OUTPUT_UNIT) 1012752.1163662494e0_REAL64, 60.39569659166906e0_REAL64, 112.22682686474255e0_REAL64
    WRITE(fmt = '("    FORTRAN = ", f14.6, "; ", f14.9, "; ", f14.9)', unit = OUTPUT_UNIT) dist, bear1, bear2
    FLUSH(unit = OUTPUT_UNIT)

    ! Populate the coefficients ...
    lon1 = 170.0e0_REAL64                                                       ! [°]
    lat1 = 10.0e0_REAL64                                                        ! [°]
    lon2 = -153.0e0_REAL64                                                      ! [°]
    lat2 = 14.0e0_REAL64                                                        ! [°]

    ! Solve and print summary ...
    ! NOTE: python3.11 -c "import pyguymer3; import pyguymer3.geo; print(pyguymer3.geo.calc_dist_between_two_locs(170.0, 10.0, -153.0, 14.0));"
    CALL sub_calc_dist_between_two_locs(lon1, lat1, lon2, lat2, dist, bear1, bear2)
    WRITE(fmt = '("How does Python compare to FORTRAN?")', unit = OUTPUT_UNIT)
    WRITE(fmt = '("     Python = ", f14.6, "; ", f14.9, "; ", f14.9)', unit = OUTPUT_UNIT) 4049560.052853737e0_REAL64, 79.97059150621645e0_REAL64, 92.06388518630848e0_REAL64
    WRITE(fmt = '("    FORTRAN = ", f14.6, "; ", f14.9, "; ", f14.9)', unit = OUTPUT_UNIT) dist, bear1, bear2
    FLUSH(unit = OUTPUT_UNIT)

    ! Populate the coefficients ...
    lon1 = 20.0e0_REAL64                                                        ! [°]
    lat1 = 40.0e0_REAL64                                                        ! [°]
    bear1 = 60.0e0_REAL64                                                       ! [°]
    dist = 1.0e6_REAL64                                                         ! [m]

    ! Solve and print summary ...
    ! NOTE: python3.11 -c "import pyguymer3; import pyguymer3.geo; print(pyguymer3.geo.calc_loc_from_loc_and_bearing_and_dist(20.0, 40.0, 60.0, 1000000.0));"
    CALL sub_calc_loc_from_loc_and_bearing_and_dist(lon1, lat1, bear1, dist, lon2, lat2, bear2)
    WRITE(fmt = '("How does Python compare to FORTRAN?")', unit = OUTPUT_UNIT)
    WRITE(fmt = '("     Python = ", f14.9, "; ", f14.9, "; ", f14.9)', unit = OUTPUT_UNIT) 30.82007234507776e0_REAL64, 44.01366546403752e0_REAL64, 67.2573906563704e0_REAL64
    WRITE(fmt = '("    FORTRAN = ", f14.9, "; ", f14.9, "; ", f14.9)', unit = OUTPUT_UNIT) lon2, lat2, bear2
    FLUSH(unit = OUTPUT_UNIT)

    ! Populate the coefficients ...
    lon1 = 170.0e0_REAL64                                                       ! [°]
    lat1 = 10.0e0_REAL64                                                        ! [°]
    bear1 = 80.0e0_REAL64                                                       ! [°]
    dist = 4.0e6_REAL64                                                         ! [m]

    ! Solve and print summary ...
    ! NOTE: python3.11 -c "import pyguymer3; import pyguymer3.geo; print(pyguymer3.geo.calc_loc_from_loc_and_bearing_and_dist(170.0, 10.0, 80.0, 4000000.0));"
    CALL sub_calc_loc_from_loc_and_bearing_and_dist(lon1, lat1, bear1, dist, lon2, lat2, bear2)
    WRITE(fmt = '("How does Python compare to FORTRAN?")', unit = OUTPUT_UNIT)
    WRITE(fmt = '("     Python = ", f14.9, "; ", f14.9, "; ", f14.9)', unit = OUTPUT_UNIT) -153.45774412535758e0_REAL64, 13.966090287654401e0_REAL64, 87.84921951322094e0_REAL64
    WRITE(fmt = '("    FORTRAN = ", f14.9, "; ", f14.9, "; ", f14.9)', unit = OUTPUT_UNIT) lon2, lat2, bear2
    FLUSH(unit = OUTPUT_UNIT)
END PROGRAM test14
