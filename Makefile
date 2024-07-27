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
FC      := $(shell which mpif90-openmpi-gcc13 2> /dev/null || echo "ERROR")
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
ifneq ($(shell $(PYTHON3) -c "import sphinx; print(0)" 2> /dev/null),0)
    $(error The Python module "sphinx" is not installed)
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

# "gmake -r [all]"       = "gmake -r compile doc" (default)
all:			compile															\
				doc

# "gmake -r clean"       = removes the compiled FORTRAN code and Sphinx documentation
clean:
	$(RM) -f *.mod *.o
	$(MAKE) -C docs clean

# "gmake -r compile"     = compiles the FORTRAN code
compile:		mod_geo.o														\
				mod_safe.o														\
				mod_safe_mpi.o

# "gmake -r doc"         = compiles the Sphinx documentation
docs/_build/html/objects.inv													\
doc &:
	$(MAKE) -C docs html

# "gmake -r doc-targets" = lists all the available Sphinx documentation targets
doc-targets:	docs/_build/html/objects.inv
	$(PYTHON3) -m sphinx.ext.intersphinx $<

# "gmake -r help"        = print this help
help:
	echo "These are the available options:"
	$(GREP) -E "^# \"gmake -r " Makefile | $(CUT) -c 2-

# ******************************************************************************
# *                            ENVIRONMENT SETTINGS                            *
# ******************************************************************************

.SILENT: help

# ******************************************************************************
# *                        INTERNALLY-SPECIFIED TARGETS                        *
# ******************************************************************************

mod_safe/const_cm.f90:															mod_safe/const_cm.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe/const_factorial/const_factorial_INT8.f90								\
mod_safe/const_factorial/const_factorial_INT16.f90								\
mod_safe/const_factorial/const_factorial_INT32.f90								\
mod_safe/const_factorial/const_factorial_INT64.f90								\
mod_safe/const_factorial/const_factorial_REAL32.f90								\
mod_safe/const_factorial/const_factorial_REAL64.f90								\
mod_safe/const_factorial/const_factorial_REAL128.f90 &:							mod_safe/const_factorial.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe/consts.f90:															mod_safe/consts.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe/sub_allocate_array/sub_allocate_1D_INT8_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_INT8_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_INT16_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_INT16_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_INT32_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_INT32_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_INT64_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_INT64_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_REAL32_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_REAL64_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_REAL128_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_INT8_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_INT8_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_INT16_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_INT16_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_INT32_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_INT32_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_INT64_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_INT64_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_REAL32_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_REAL64_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_REAL128_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_INT8_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_INT8_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_INT16_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_INT16_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_INT32_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_INT32_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_INT64_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_INT64_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_REAL32_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_REAL64_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_REAL128_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_INT8_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_INT8_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_INT16_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_INT16_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_INT32_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_INT32_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_INT64_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_INT64_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_REAL32_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_REAL64_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_REAL128_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_INT8_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_INT8_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_INT16_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_INT16_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_INT32_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_INT32_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_INT64_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_INT64_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_REAL32_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_REAL64_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_REAL128_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_INT8_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_INT8_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_INT16_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_INT16_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_INT32_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_INT32_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_INT64_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_INT64_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_REAL32_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_REAL64_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_REAL128_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_INT8_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_INT8_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_INT16_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_INT16_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_INT32_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_INT32_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_INT64_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_INT64_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_REAL32_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_REAL64_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_REAL128_real_array.f90 &:			mod_safe/sub_allocate_array.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe/sub_load_array_as_BIN/sub_load_1D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_1D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_1D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_1D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_1D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_1D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_1D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_1D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_1D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_load_array_as_BIN/sub_load_1D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_load_array_as_BIN/sub_load_1D_REAL128_real_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_2D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_2D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_2D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_2D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_2D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_2D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_2D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_2D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_2D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_load_array_as_BIN/sub_load_2D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_load_array_as_BIN/sub_load_2D_REAL128_real_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_3D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_3D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_3D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_3D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_3D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_3D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_3D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_3D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_3D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_load_array_as_BIN/sub_load_3D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_load_array_as_BIN/sub_load_3D_REAL128_real_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_4D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_4D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_4D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_4D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_4D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_4D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_4D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_4D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_4D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_load_array_as_BIN/sub_load_4D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_load_array_as_BIN/sub_load_4D_REAL128_real_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_5D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_5D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_5D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_5D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_5D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_5D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_5D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_5D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_5D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_load_array_as_BIN/sub_load_5D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_load_array_as_BIN/sub_load_5D_REAL128_real_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_6D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_6D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_6D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_6D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_6D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_6D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_6D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_6D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_6D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_load_array_as_BIN/sub_load_6D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_load_array_as_BIN/sub_load_6D_REAL128_real_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_7D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_7D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_7D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_7D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_7D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_7D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_7D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_7D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_load_array_as_BIN/sub_load_7D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_load_array_as_BIN/sub_load_7D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_load_array_as_BIN/sub_load_7D_REAL128_real_array_as_BIN.f90 &:		mod_safe/sub_load_array_as_BIN.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe/sub_save_array_as_BIN/sub_save_1D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_1D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_1D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_1D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_1D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_1D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_1D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_1D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_1D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_1D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_1D_REAL128_real_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_2D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_2D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_2D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_2D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_2D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_2D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_2D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_2D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_2D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_2D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_2D_REAL128_real_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_3D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_3D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_3D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_3D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_3D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_3D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_3D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_3D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_3D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_3D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_3D_REAL128_real_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_4D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_4D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_4D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_4D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_4D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_4D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_4D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_4D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_4D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_4D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_4D_REAL128_real_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_5D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_5D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_5D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_5D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_5D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_5D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_5D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_5D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_5D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_5D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_5D_REAL128_real_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_6D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_6D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_6D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_6D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_6D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_6D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_6D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_6D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_6D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_6D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_6D_REAL128_real_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_7D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_7D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_7D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_7D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_7D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_7D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_7D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_7D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_7D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_7D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_7D_REAL128_real_array_as_BIN.f90 &:		mod_safe/sub_save_array_as_BIN.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe/sub_save_array_as_PBM/sub_save_2D_INT8_logical_array_as_PBM.f90		\
mod_safe/sub_save_array_as_PBM/sub_save_2D_INT16_logical_array_as_PBM.f90		\
mod_safe/sub_save_array_as_PBM/sub_save_2D_INT32_logical_array_as_PBM.f90		\
mod_safe/sub_save_array_as_PBM/sub_save_2D_INT64_logical_array_as_PBM.f90 &:	mod_safe/sub_save_array_as_PBM.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe/sub_save_array_as_PGM/sub_save_2D_INT8_integer_array_as_PGM.f90		\
mod_safe/sub_save_array_as_PGM/sub_save_2D_INT16_integer_array_as_PGM.f90		\
mod_safe/sub_save_array_as_PGM/sub_save_2D_INT32_integer_array_as_PGM.f90		\
mod_safe/sub_save_array_as_PGM/sub_save_2D_INT64_integer_array_as_PGM.f90		\
mod_safe/sub_save_array_as_PGM/sub_save_2D_REAL32_real_array_as_PGM.f90	    	\
mod_safe/sub_save_array_as_PGM/sub_save_2D_REAL64_real_array_as_PGM.f90	    	\
mod_safe/sub_save_array_as_PGM/sub_save_2D_REAL128_real_array_as_PGM.f90 &:		mod_safe/sub_save_array_as_PGM.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe/sub_save_array_as_PPM/sub_save_2D_INT8_integer_array_as_PPM.f90		\
mod_safe/sub_save_array_as_PPM/sub_save_2D_INT16_integer_array_as_PPM.f90		\
mod_safe/sub_save_array_as_PPM/sub_save_2D_INT32_integer_array_as_PPM.f90		\
mod_safe/sub_save_array_as_PPM/sub_save_2D_INT64_integer_array_as_PPM.f90		\
mod_safe/sub_save_array_as_PPM/sub_save_2D_REAL32_real_array_as_PPM.f90	    	\
mod_safe/sub_save_array_as_PPM/sub_save_2D_REAL64_real_array_as_PPM.f90	    	\
mod_safe/sub_save_array_as_PPM/sub_save_2D_REAL128_real_array_as_PPM.f90 &:		mod_safe/sub_save_array_as_PPM.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT8_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT8_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT16_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT16_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT32_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT32_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT64_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT64_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_REAL32_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_REAL64_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_REAL128_real_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT8_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT8_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT16_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT16_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT32_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT32_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT64_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT64_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_REAL32_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_REAL64_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_REAL128_real_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT8_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT8_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT16_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT16_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT32_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT32_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT64_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT64_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_REAL32_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_REAL64_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_REAL128_real_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT8_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT8_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT16_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT16_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT32_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT32_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT64_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT64_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_REAL32_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_REAL64_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_REAL128_real_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT8_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT8_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT16_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT16_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT32_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT32_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT64_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT64_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_REAL32_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_REAL64_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_REAL128_real_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT8_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT8_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT16_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT16_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT32_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT32_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT64_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT64_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_REAL32_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_REAL64_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_REAL128_real_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT8_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT8_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT16_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT16_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT32_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT32_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT64_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT64_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_REAL32_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_REAL64_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_REAL128_real_array.f90 &:		mod_safe_mpi/sub_allreduce_array.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT8_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT8_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT16_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT16_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT32_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT32_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT64_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT64_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_REAL32_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_REAL64_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_REAL128_real_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT8_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT8_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT16_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT16_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT32_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT32_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT64_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT64_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_REAL32_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_REAL64_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_REAL128_real_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT8_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT8_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT16_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT16_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT32_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT32_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT64_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT64_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_REAL32_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_REAL64_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_REAL128_real_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT8_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT8_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT16_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT16_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT32_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT32_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT64_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT64_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_REAL32_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_REAL64_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_REAL128_real_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT8_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT8_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT16_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT16_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT32_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT32_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT64_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT64_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_REAL32_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_REAL64_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_REAL128_real_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT8_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT8_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT16_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT16_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT32_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT32_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT64_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT64_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_REAL32_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_REAL64_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_REAL128_real_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT8_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT8_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT16_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT16_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT32_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT32_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT64_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT64_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_REAL32_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_REAL64_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_REAL128_real_array.f90 &:				mod_safe_mpi/sub_bcast_array.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_geo.mod																		\
mod_geo.o &:		$(MOD_GEO_SRC)												\
					mod_safe.mod
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) mod_geo.F90

mod_safe.mod																	\
mod_safe.o &:		$(MOD_SAFE_SRC)
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) mod_safe.F90

mod_safe_mpi.mod																\
mod_safe_mpi.o &:	$(MOD_SAFE_MPI_SRC)
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) mod_safe_mpi.F90
