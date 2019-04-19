#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Import modules ...
import math
import scipy
import scipy.constants

# Open output file ...
with open("consts.inc", "wt") as fobj:
    # Write declaration ...
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_1sigma = {:.16e}_REAL64\n".format(math.erf(1.0 / math.sqrt(2.0))))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_2sigma = {:.16e}_REAL64\n".format(math.erf(2.0 / math.sqrt(2.0))))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_3sigma = {:.16e}_REAL64\n".format(math.erf(3.0 / math.sqrt(2.0))))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_4sigma = {:.16e}_REAL64\n".format(math.erf(4.0 / math.sqrt(2.0))))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_5sigma = {:.16e}_REAL64\n".format(math.erf(5.0 / math.sqrt(2.0))))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_6sigma = {:.16e}_REAL64\n".format(math.erf(6.0 / math.sqrt(2.0))))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_amu = {:.16e}_REAL64\n".format(scipy.constants.atomic_mass))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_c = {:.16e}_REAL64\n".format(scipy.constants.c))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_e = {:.16e}_REAL64\n".format(scipy.constants.e))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_eps0 = {:.16e}_REAL64\n".format(scipy.constants.epsilon_0))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_g = {:.16e}_REAL64\n".format(scipy.constants.g))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_h = {:.16e}_REAL64\n".format(scipy.constants.h))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_kb = {:.16e}_REAL64\n".format(scipy.constants.k))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_me = {:.16e}_REAL64\n".format(scipy.constants.m_e))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_mn = {:.16e}_REAL64\n".format(scipy.constants.m_n))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_mp = {:.16e}_REAL64\n".format(scipy.constants.m_p))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_mu0 = {:.16e}_REAL64\n".format(scipy.constants.mu_0))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_na = {:.16e}_REAL64\n".format(scipy.constants.N_A))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_pi = {:.16e}_REAL64\n".format(scipy.constants.pi))
    fobj.write("REAL(kind = REAL64), PARAMETER                                                  :: const_sig = {:.16e}_REAL64\n".format(scipy.constants.sigma))
