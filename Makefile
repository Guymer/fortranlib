# ******************************************************************************
# *                                 VARIABLES                                  *
# ******************************************************************************

DEBUG     ?= false
DEBG_OPTS := -g -fcheck=all
LANG_OPTS := -ffree-form -ffree-line-length-none -frecursive -fno-unsafe-math-optimizations -frounding-math -fsignaling-nans -fPIC
WARN_OPTS := -Wall -Wextra -Waliasing -Wcharacter-truncation -Wconversion-extra -Wimplicit-interface -Wimplicit-procedure -Wunderflow -Wtabs
OPTM_OPTS := -O2
MACH_OPTS := -march=native -m64

# ******************************************************************************
# *                                  BINARIES                                  *
# ******************************************************************************

CUT     := $(shell which cut                  2> /dev/null || echo "ERROR")
FC      := $(shell which mpif90-openmpi-gcc12 2> /dev/null || echo "ERROR")
GREP    := $(shell which grep                 2> /dev/null || echo "ERROR")
PYTHON3 := $(shell which python3.11           2> /dev/null || echo "ERROR")
RM      := $(shell which rm                   2> /dev/null || echo "ERROR")

# ******************************************************************************
# *                             DYNAMIC VARIABLES                              *
# ******************************************************************************

ifeq ($(DEBUG), true)
	LANG_OPTS += $(DEBG_OPTS)
endif

# ******************************************************************************
# *                               CHECK BINARIES                               *
# ******************************************************************************

ifeq ($(CUT),ERROR)
    $(error The binary "cut" is not installed)
endif
ifeq ($(FC),ERROR)
    $(error The binary "fc" is not installed)
endif
ifeq ($(GREP),ERROR)
    $(error The binary "grep" is not installed)
endif
ifeq ($(PYTHON3),ERROR)
    $(error The binary "python3" is not installed)
endif
ifeq ($(RM),ERROR)
    $(error The binary "rm" is not installed)
endif

# ******************************************************************************
# *                            CHECK PYTHON MODULES                            *
# ******************************************************************************

ifneq ($(shell $(PYTHON3) -c "import matplotlib; print(0)" 2> /dev/null),0)
    $(error The Python module "matplotlib" is not installed)
endif
ifneq ($(shell $(PYTHON3) -c "import scipy; print(0)" 2> /dev/null),0)
    $(error The Python module "scipy" is not installed)
endif

# ******************************************************************************
# *                             DERIVED VARIABLES                              *
# ******************************************************************************

MOD_GEO_SRC      := $(sort mod_geo.F90 $(wildcard mod_geo/*.f90) $(wildcard mod_geo/*/*.f90))
MOD_SAFE_SRC     := $(sort mod_safe.F90 $(wildcard mod_safe/*.f90) $(wildcard mod_safe/*/*.f90))
MOD_SAFE_MPI_SRC := $(sort mod_safe_mpi.F90 $(wildcard mod_safe_mpi/*.f90) $(wildcard mod_safe_mpi/*/*.f90))

# ******************************************************************************
# *                           USER-SPECIFIED TARGETS                           *
# ******************************************************************************

# "gmake -r [all]"   = "make compile" (default)
all:			compile

# "gmake -r clean"   = removes the compiled code
clean:			$(RM)
	$(RM) -f *.mod *.o

# "gmake -r compile" = compiles the code
compile:		mod_geo.o														\
				mod_safe.o														\
				mod_safe_mpi.o

# "gmake -r help"    = print this help
help:			$(GREP) 														\
				$(CUT)
	echo "These are the available options:"
	$(GREP) -E "^# \"gmake -r " Makefile | $(CUT) -c 2-

# ******************************************************************************
# *                            ENVIRONMENT SETTINGS                            *
# ******************************************************************************

.SILENT: help

# ******************************************************************************
# *                        INTERNALLY-SPECIFIED TARGETS                        *
# ******************************************************************************

mod_safe/const_cm.f90:									mod_safe/const_cm.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe/const_factorial/const_factorial_INT8.f90	\
mod_safe/const_factorial/const_factorial_INT16.f90	\
mod_safe/const_factorial/const_factorial_INT32.f90	\
mod_safe/const_factorial/const_factorial_INT64.f90	\
mod_safe/const_factorial/const_factorial_REAL32.f90	\
mod_safe/const_factorial/const_factorial_REAL64.f90	\
mod_safe/const_factorial/const_factorial_REAL128.f90:	mod_safe/const_factorial.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe/consts.f90:									mod_safe/consts.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_geo.mod																		\
mod_geo.o:		$(MOD_GEO_SRC)													\
				mod_safe.mod
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) mod_geo.F90

mod_safe.mod																	\
mod_safe.o:		$(MOD_SAFE_SRC)
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) mod_safe.F90

mod_safe_mpi.mod																\
mod_safe_mpi.o:	$(MOD_SAFE_MPI_SRC)
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) mod_safe_mpi.F90
