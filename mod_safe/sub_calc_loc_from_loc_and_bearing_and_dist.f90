!> @brief This subroutine reads in coordinates (in degrees) on the surface of Earth and a heading (in degrees) and a distance (in metres) it then calculates the coordinates (in degrees) that are at the end of the vector.
!>
!> @note https://en.wikipedia.org/wiki/Vincenty%27s_formulae
!>
!> @note https://www.movable-type.co.uk/scripts/latlong-vincenty.html
!>

PURE SUBROUTINE sub_calc_loc_from_loc_and_bearing_and_dist(lon1_deg, lat1_deg, alpha1_deg, s_m, lon2_deg, lat2_deg, alpha2_deg, nmax, eps)
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables/outputs ...
    REAL(kind = REAL64), INTENT(in)                                             :: lon1_deg
    REAL(kind = REAL64), INTENT(in)                                             :: lat1_deg
    REAL(kind = REAL64), INTENT(in)                                             :: alpha1_deg
    REAL(kind = REAL64), INTENT(in)                                             :: s_m
    REAL(kind = REAL64), INTENT(out)                                            :: lon2_deg
    REAL(kind = REAL64), INTENT(out)                                            :: lat2_deg
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
    REAL(kind = REAL64)                                                         :: cosSq_alpha
    REAL(kind = REAL64)                                                         :: delta_sigma
    REAL(kind = REAL64)                                                         :: eps2
    REAL(kind = REAL64)                                                         :: l
    REAL(kind = REAL64)                                                         :: lambda
    REAL(kind = REAL64)                                                         :: lat1
    REAL(kind = REAL64)                                                         :: lat2
    REAL(kind = REAL64)                                                         :: lon1
    REAL(kind = REAL64)                                                         :: lon2
    REAL(kind = REAL64)                                                         :: sigma
    REAL(kind = REAL64)                                                         :: sigma1
    REAL(kind = REAL64)                                                         :: sigmanew
    REAL(kind = REAL64)                                                         :: sin_alpha
    REAL(kind = REAL64)                                                         :: two_sigma_m
    REAL(kind = REAL64)                                                         :: u1
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

    ! Convert to radians ...
    lon1 = func_radians(lon1_deg)                                               ! [rad]
    lat1 = func_radians(lat1_deg)                                               ! [rad]
    alpha1 = func_radians(alpha1_deg)                                           ! [rad]

    ! Set constants ...
    u1 = ATAN((1.0e0_REAL64 - f) * TAN(lat1))
    sigma1 = ATAN2(TAN(u1), COS(alpha1))
    sin_alpha = COS(u1) * SIN(alpha1)
    cosSq_alpha = 1.0e0_REAL64 - sin_alpha ** 2
    c = f * cosSq_alpha * (4.0e0_REAL64 + f * (4.0e0_REAL64 - 3.0e0_REAL64 * cosSq_alpha)) / 16.0e0_REAL64
    uSq = cosSq_alpha * (a ** 2 - b ** 2) / b ** 2
    bigA = 1.0e0_REAL64 + uSq * (4096.0e0_REAL64 + uSq * (-768.0e0_REAL64 + uSq * (320.0e0_REAL64 - 175.0e0_REAL64 * uSq))) / 16384.0e0_REAL64
    bigB = uSq * (256.0e0_REAL64 + uSq * (-128.0e0_REAL64 + uSq * (74.0e0_REAL64 - 47.0e0_REAL64 * uSq))) / 1024.0e0_REAL64

    ! Set initial value of sigma ...
    sigma = s_m / (b * bigA)

    ! Loop over iterations ...
    DO i = 1_INT64, nmax2
        ! Find new value of sigma ...
        two_sigma_m = 2.0e0_REAL64 * sigma1 + sigma
        delta_sigma = bigB * SIN(sigma) * (COS(two_sigma_m) + 0.25e0_REAL64 * bigB * (COS(sigma) * (2.0e0_REAL64 * COS(two_sigma_m) ** 2 - 1.0e0_REAL64) - bigB * COS(two_sigma_m) * (4.0e0_REAL64 * SIN(sigma) ** 2 - 3.0e0_REAL64) * (4.0e0_REAL64 * COS(two_sigma_m) ** 2 - 3.0e0_REAL64) / 6.0e0_REAL64))
        sigmaNew = s_m / (b * bigA) + delta_sigma

        ! Only check the solution after at least 3 iterations ...
        IF(i >= 3_INT64)THEN
            IF(ABS(sigmaNew - sigma) / ABS(sigmaNew) <= eps2)THEN
                ! Replace old sigma with new sigma ...
                sigma = sigmaNew

                EXIT
            END IF
        END IF

        ! Replace old sigma with new sigma ...
        sigma = sigmaNew
    END DO

    ! Calculate end point and forward azimuth ...
    lat2 = ATAN2(SIN(u1) * COS(sigma) + COS(u1) * SIN(sigma) * COS(alpha1), (1.0e0_REAL64 - f) * HYPOT(sin_alpha, SIN(u1) * SIN(sigma) - COS(u1) * COS(sigma) * COS(alpha1)))
    lambda = ATAN2(SIN(sigma) * SIN(alpha1), COS(u1) * COS(sigma) - SIN(u1) * SIN(sigma) * COS(alpha1))
    l = lambda - (1.0e0_REAL64 - c) * f * sin_alpha * (sigma + c * SIN(sigma) * (COS(two_sigma_m) + c * COS(sigma) * (2.0e0_REAL64 * COS(two_sigma_m) ** 2 - 1.0e0_REAL64)))
    lon2 = l + lon1
    alpha2 = ATAN2(sin_alpha, COS(u1) * COS(sigma) * COS(alpha1) - SIN(u1) * SIN(sigma))
    alpha2 = MODULO(alpha2 + 2.0e0_REAL64 * const_pi, 2.0e0_REAL64 * const_pi)              ! NOTE: Normalize to 0 <--> +360 (in radians)

    ! Convert to degrees ...
    lon2_deg = func_degrees(lon2)                                               ! [deg]
    lat2_deg = func_degrees(lat2)                                               ! [deg]
    alpha2_deg = func_degrees(alpha2)                                           ! [deg]
END SUBROUTINE sub_calc_loc_from_loc_and_bearing_and_dist
