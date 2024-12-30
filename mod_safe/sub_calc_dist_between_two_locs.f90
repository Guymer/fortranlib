!> @brief This subroutine reads in two coordinates (in degrees) on the surface of Earth and calculates the Geodetic distance (in metres) between them and the headings (in degrees) from each coordinate to the other one.
!>
!> @note https://en.wikipedia.org/wiki/Vincenty%27s_formulae
!>
!> @note https://www.movable-type.co.uk/scripts/latlong-vincenty.html
!>

PURE SUBROUTINE sub_calc_dist_between_two_locs(lon1_deg, lat1_deg, lon2_deg, lat2_deg, s_m, alpha1_deg, alpha2_deg, nmax, eps)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables/outputs ...
    REAL(kind = REAL64), INTENT(in)                                             :: lon1_deg
    REAL(kind = REAL64), INTENT(in)                                             :: lat1_deg
    REAL(kind = REAL64), INTENT(in)                                             :: lon2_deg
    REAL(kind = REAL64), INTENT(in)                                             :: lat2_deg
    REAL(kind = REAL64), INTENT(out)                                            :: s_m
    REAL(kind = REAL64), INTENT(out)                                            :: alpha1_deg
    REAL(kind = REAL64), INTENT(out)                                            :: alpha2_deg

    ! Declare optional input variables/outputs ...
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: nmax
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: eps

    ! Declare internal parameters ...
    REAL(kind = REAL64), PARAMETER                                              :: a = 6378137.0e0_REAL64
    REAL(kind = REAL64), PARAMETER                                              :: f = 1.0e0_REAL64 / 298.257223563e0_REAL64

    ! Declare internal derived parameters ...
    REAL(kind = REAL64), PARAMETER                                              :: b = (1.0e0_REAL64 - f) * a

    ! Declare internal variables ...
    INTEGER(kind = INT64)                                                       :: i
    INTEGER(kind = INT64)                                                       :: nmax2
    REAL(kind = REAL64)                                                         :: alpha1
    REAL(kind = REAL64)                                                         :: alpha2
    REAL(kind = REAL64)                                                         :: bigA
    REAL(kind = REAL64)                                                         :: bigB
    REAL(kind = REAL64)                                                         :: c
    REAL(kind = REAL64)                                                         :: cos_sigma
    REAL(kind = REAL64)                                                         :: cos_two_sigma_m
    REAL(kind = REAL64)                                                         :: cosSq_alpha
    REAL(kind = REAL64)                                                         :: delta_sigma
    REAL(kind = REAL64)                                                         :: eps2
    REAL(kind = REAL64)                                                         :: l
    REAL(kind = REAL64)                                                         :: lambda
    REAL(kind = REAL64)                                                         :: lambdanew
    REAL(kind = REAL64)                                                         :: lat1
    REAL(kind = REAL64)                                                         :: lat2
    REAL(kind = REAL64)                                                         :: lon1
    REAL(kind = REAL64)                                                         :: lon2
    REAL(kind = REAL64)                                                         :: sigma
    REAL(kind = REAL64)                                                         :: sin_alpha
    REAL(kind = REAL64)                                                         :: sin_sigma
    REAL(kind = REAL64)                                                         :: u1
    REAL(kind = REAL64)                                                         :: u2
    REAL(kind = REAL64)                                                         :: uSq

    ! Set value ...
    IF(PRESENT(nmax))THEN
        nmax2 = MAX(3_INT64, MIN(100_INT64, nmax))
    ELSE
        nmax2 = 100_INT64
    END IF

    ! Set value ...
    IF(PRESENT(eps))THEN
        eps2 = eps
    ELSE
        eps2 = 1.0e-12_REAL64
    END IF

    ! Skip if the start- and end-points are the same ...
    IF(lon1_deg == lon2_deg .AND. lat1_deg == lat2_deg)THEN
        s_m = 0.0e0_REAL64                                                      ! [m]
        alpha1_deg = 0.0e0_REAL64                                               ! [°]
        alpha2_deg = 0.0e0_REAL64                                               ! [°]
        RETURN
    END IF

    ! Convert to radians ...
    lon1 = func_radians(lon1_deg)                                               ! [rad]
    lat1 = func_radians(lat1_deg)                                               ! [rad]
    lon2 = func_radians(lon2_deg)                                               ! [rad]
    lat2 = func_radians(lat2_deg)                                               ! [rad]

    ! Set constants ...
    l = lon2 - lon1                                                             ! [rad]
    u1 = ATAN((1.0e0_REAL64 - f) * TAN(lat1))                                   ! [rad]
    u2 = ATAN((1.0e0_REAL64 - f) * TAN(lat2))                                   ! [rad]

    ! Set initial value of lambda ...
    lambda = l

    ! Loop over iterations ...
    DO i = 1_INT64, nmax2
        ! Calculate new lambda ...
        sin_sigma = HYPOT(COS(u2) * SIN(lambda), COS(u1) * SIN(u2) - SIN(u1) * COS(u2) * COS(lambda))
        IF(sin_sigma == 0.0e0_REAL64)THEN
            ! NOTE: co-incident points
            s_m = 0.0e0_REAL64                                                  ! [m]
            alpha1_deg = 0.0e0_REAL64                                           ! [°]
            alpha2_deg = 0.0e0_REAL64                                           ! [°]
            RETURN
        END IF
        cos_sigma = SIN(u1) * SIN(u2) + COS(u1) * COS(u2) * COS(lambda)
        sigma = ATAN2(sin_sigma, cos_sigma)
        sin_alpha = COS(u1) * COS(u2) * SIN(lambda) / sin_sigma
        cosSq_alpha = 1.0e0_REAL64 - sin_alpha ** 2
        IF(cosSq_alpha == 0.0e0_REAL64)THEN
            ! NOTE: equatorial line
            cos_two_sigma_m = 0.0e0_REAL64
        ELSE
            cos_two_sigma_m = cos_sigma - 2.0e0_REAL64 * SIN(u1) * SIN(u2) / cosSq_alpha
        END IF
        c = f * cosSq_alpha * (4.0e0_REAL64 + f * (4.0e0_REAL64 - 3.0e0_REAL64 * cosSq_alpha)) / 16.0e0_REAL64
        lambdanew = l + (1.0e0_REAL64 - c) * f * sin_alpha * (sigma + c * sin_sigma * (cos_two_sigma_m + c * cos_sigma * (2.0e0_REAL64 * cos_two_sigma_m ** 2 - 1.0e0_REAL64)))

        ! Only check the solution after at least 3 iterations ...
        IF(i >= 3_INT64)THEN
            IF(lambdanew == lambda)THEN
                ! Replace old lambda with new lambda ...
                lambda = lambdanew

                EXIT
            END IF
            IF(ABS(lambdanew - lambda) / ABS(lambdanew) <= eps2)THEN
                ! Replace old lambda with new lambda ...
                lambda = lambdanew

                EXIT
            END IF
        END IF

        ! Replace old lambda with new lambda ...
        lambda = lambdanew
    END DO

    ! Calculate ellipsoidal distance and forward azimuths ...
    uSq = cosSq_alpha * (a ** 2 - b ** 2) / b ** 2
    bigA = 1.0e0_REAL64 + uSq * (4096.0e0_REAL64 + uSq * (-768.0e0_REAL64 + uSq * (320.0e0_REAL64 - 175.0e0_REAL64 * uSq))) / 16384.0e0_REAL64
    bigB = uSq * (256.0e0_REAL64 + uSq * (-128.0e0_REAL64 + uSq * (74.0e0_REAL64 - 47.0e0_REAL64 * uSq))) / 1024.0e0_REAL64
    delta_sigma = bigB * sin_sigma * (cos_two_sigma_m + 0.25e0_REAL64 * bigB * (cos_sigma * (2.0e0_REAL64 * cos_two_sigma_m ** 2 - 1.0e0_REAL64) - bigB * cos_two_sigma_m * (4.0e0_REAL64 * sin_sigma ** 2 - 3.0e0_REAL64) * (4.0e0_REAL64 * cos_two_sigma_m ** 2 - 3.0e0_REAL64) / 6.0e0_REAL64))
    s_m = b * bigA * (sigma - delta_sigma)
    alpha1 = ATAN2(COS(u2) * SIN(lambda), COS(u1) * SIN(u2) - SIN(u1) * COS(u2) * COS(lambda))
    alpha2 = ATAN2(COS(u1) * SIN(lambda), SIN(u1) * COS(u2) - COS(u1) * SIN(u2) * COS(lambda))
    alpha1 = MODULO(alpha1 + 2.0e0_REAL64 * const_pi, 2.0e0_REAL64 * const_pi)              ! NOTE: Normalize to 0° <--> +360° (in radians)
    alpha2 = MODULO(alpha2 + 2.0e0_REAL64 * const_pi, 2.0e0_REAL64 * const_pi)              ! NOTE: Normalize to 0° <--> +360° (in radians)

    ! Convert to degrees ...
    alpha1_deg = func_degrees(alpha1)                                           ! [°]
    alpha2_deg = func_degrees(alpha2)                                           ! [°]
END SUBROUTINE sub_calc_dist_between_two_locs
