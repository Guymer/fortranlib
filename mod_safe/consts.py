#!/usr/bin/env python3

# Use the proper idiom in the main module ...
# NOTE: See https://docs.python.org/3.12/library/multiprocessing.html#the-spawn-and-forkserver-start-methods
if __name__ == "__main__":
    # Import standard modules ...
    import math

    # Import special modules ...
    try:
        import scipy
        import scipy.constants
    except:
        raise Exception("\"scipy\" is not installed; run \"pip install --user scipy\"") from None

    # Open output file ...
    with open("consts.f90", "wt", encoding = "utf-8") as fObj:
        # Write documentation ...
        fObj.write("!> @cite scipy\n")
        fObj.write("!>\n")
        fObj.write("\n")

        # Write declarations ...
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_1sigma = {math.erf(1.0 / math.sqrt(2.0)):.15e}_REAL64\n")
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_2sigma = {math.erf(2.0 / math.sqrt(2.0)):.15e}_REAL64\n")
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_3sigma = {math.erf(3.0 / math.sqrt(2.0)):.15e}_REAL64\n")
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_4sigma = {math.erf(4.0 / math.sqrt(2.0)):.15e}_REAL64\n")
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_5sigma = {math.erf(5.0 / math.sqrt(2.0)):.15e}_REAL64\n")
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_6sigma = {math.erf(6.0 / math.sqrt(2.0)):.15e}_REAL64\n")
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_amu = {scipy.constants.atomic_mass:.15e}_REAL64\n")
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_c = {scipy.constants.c:.15e}_REAL64\n")
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_e = {scipy.constants.e:.15e}_REAL64\n")
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_eps0 = {scipy.constants.epsilon_0:.15e}_REAL64\n")
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_g = {scipy.constants.g:.15e}_REAL64\n")
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_h = {scipy.constants.h:.15e}_REAL64\n")
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_kb = {scipy.constants.k:.15e}_REAL64\n")
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_me = {scipy.constants.m_e:.15e}_REAL64\n")
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_mn = {scipy.constants.m_n:.15e}_REAL64\n")
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_mp = {scipy.constants.m_p:.15e}_REAL64\n")
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_mu0 = {scipy.constants.mu_0:.15e}_REAL64\n")
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_na = {scipy.constants.N_A:.15e}_REAL64\n")
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_pi = {scipy.constants.pi:.15e}_REAL64\n")
        fObj.write(f"REAL(kind = REAL64), PARAMETER                                                  :: const_sig = {scipy.constants.sigma:.15e}_REAL64\n")
