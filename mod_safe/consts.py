#!/usr/bin/env python3

# Import standard modules ...
import math

# Import special modules ...
import scipy
import scipy.constants

# Open output file ...
with open("consts.f90", "wt") as fobj:
    # Write documentation ...
    fobj.write("!> @cite scipy\n")
    fobj.write("!>\n")
    fobj.write("\n")

    # Write declarations ...
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_1sigma = {:.15e}_REAL64\n".format(math.erf(1.0 / math.sqrt(2.0))))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_2sigma = {:.15e}_REAL64\n".format(math.erf(2.0 / math.sqrt(2.0))))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_3sigma = {:.15e}_REAL64\n".format(math.erf(3.0 / math.sqrt(2.0))))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_4sigma = {:.15e}_REAL64\n".format(math.erf(4.0 / math.sqrt(2.0))))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_5sigma = {:.15e}_REAL64\n".format(math.erf(5.0 / math.sqrt(2.0))))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_6sigma = {:.15e}_REAL64\n".format(math.erf(6.0 / math.sqrt(2.0))))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_amu = {:.15e}_REAL64\n".format(scipy.constants.atomic_mass))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_c = {:.15e}_REAL64\n".format(scipy.constants.c))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_e = {:.15e}_REAL64\n".format(scipy.constants.e))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_eps0 = {:.15e}_REAL64\n".format(scipy.constants.epsilon_0))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_g = {:.15e}_REAL64\n".format(scipy.constants.g))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_h = {:.15e}_REAL64\n".format(scipy.constants.h))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_kb = {:.15e}_REAL64\n".format(scipy.constants.k))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_me = {:.15e}_REAL64\n".format(scipy.constants.m_e))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_mn = {:.15e}_REAL64\n".format(scipy.constants.m_n))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_mp = {:.15e}_REAL64\n".format(scipy.constants.m_p))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_mu0 = {:.15e}_REAL64\n".format(scipy.constants.mu_0))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_na = {:.15e}_REAL64\n".format(scipy.constants.N_A))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_pi = {:.15e}_REAL64\n".format(scipy.constants.pi))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_sig = {:.15e}_REAL64\n".format(scipy.constants.sigma))
